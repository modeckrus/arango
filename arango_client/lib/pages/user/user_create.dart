import 'package:arango_client/model/user.dart';
import 'package:arango_client/pages/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_create/user_create_bloc.dart';

class UserCreatePage extends StatefulWidget {
  final User? user;
  const UserCreatePage({Key? key, this.user}) : super(key: key);

  @override
  _UserCreatePageState createState() => _UserCreatePageState();
}

class _UserCreatePageState extends State<UserCreatePage> {
  User? user;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isUpdate = false;
  @override
  void initState() {
    if (widget.user != null) {
      user = widget.user;
      nameController.text = user!.name;
      emailController.text = user!.email;
      level = user!.level;
      isUpdate = true;
    }

    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  UserLevel level = UserLevel.auth;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCreateBloc(),
      child: Builder(builder: (context) {
        return SafeArea(
          top: false,
          child: Scaffold(
            appBar: AppBar(
              title: Text(isUpdate?nameController.text:'Create User'),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(isUpdate?Icons.update: Icons.navigate_next),
              onPressed: () {
                if(isUpdate){
                  if(user != null){
                    BlocProvider.of<UserCreateBloc>(context).add(UserUpdateE(
                    user: user!,
                    password: passController.text == ""?null: passController.text));
                  }
                }else{
                BlocProvider.of<UserCreateBloc>(context).add(UserCreateE(
                    name: nameController.text,
                    email: emailController.text,
                    level: level,
                    password: passController.text));
                }
              },
            ),
            body: BlocListener<UserCreateBloc, UserCreateState>(
              listener: (context, state) {
                if (state is UserCreateSuccesS) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserPage(user: state.user)));
                }
                if (state is UserCreateErrorS) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(state.error)));
                }
                if (state is UserCreateLoadingS) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Loading')));
                }
              },
              child: Column(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(labelText: 'Pass'),
                  ),
                  DropdownButton<UserLevel>(
                      onChanged: (newLevel) {
                        if (newLevel != null) {
                          setState(() {
                            level = newLevel;
                          });
                        }
                      },
                      value: level,
                      items: const [
                        DropdownMenuItem(
                          child: Text('Auth'),
                          value: UserLevel.auth,
                        ),
                        DropdownMenuItem(
                          child: Text('UnAuth'),
                          value: UserLevel.unauth,
                        ),
                      ])
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

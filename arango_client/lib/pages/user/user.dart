import '../../model/file.dart';
import '../../model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'user_page/user_page_bloc.dart';

class UserPage extends StatefulWidget {
  final User user;
  const UserPage({Key? key, required this.user}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  User get user => widget.user;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserPageBloc()..add(UserPageInit(user.id)),
      child: Builder(builder: (context) {
        return SafeArea(
          top: false,
          child: Scaffold(
            appBar: AppBar(
              title: Text(user.name),
            ),
            body: BlocBuilder<UserPageBloc, UserPageState>(
              builder: (context, state) {
                if (state is UserPageErrorS) {
                  return Text(state.error);
                }
                if (state is UserPageLoadingS) {
                  return const CircularProgressIndicator();
                }
                if (state is UserPageSuccesS) {
                  final files = state.files;
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final file = files[index];
                      late Icon icon;
                      switch (file.type) {
                        case FileType.file:
                          icon = Icon(Icons.file_copy);
                          break;
                        case FileType.image:
                          icon = Icon(Icons.image);
                          break;
                        default:
                      }
                      return ListTile(
                        leading: icon,
                        title: Text(file.name),
                      );
                    },
                    itemCount: files.length,
                  );
                }
                return Container();
              },
            ),
          ),
        );
      }),
    );
  }
}

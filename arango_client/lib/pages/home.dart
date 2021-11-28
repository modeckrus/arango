import 'package:arango_client/pages/user/user_create.dart';

import 'user/user.dart';

import '../auth/auth_bloc.dart';
import '../model/user.dart';
import '../service/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'search/search_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SearchBloc(service: GetIt.I.get<UserService>())
          ..add(SearchE(skip: 0, limit: 10)),
        child: HomePageWidget());
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController searchController = TextEditingController();
  SearchBloc? bloc;
  @override
  void initState() {
    searchController.addListener(() {
      final search = searchController.text == "" ? null : searchController.text;
      bloc?.add(SearchE(skip: skip, limit: limit, search: search));
    });
    super.initState();
  }

  int skip = 0;
  int limit = 10;
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bloc ??= BlocProvider.of<SearchBloc>(context);

    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            Navigator.pushNamed(context, '/user/create');
          },
        ),
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(AuthLogOutE());
                  },
                  icon: Icon(Icons.logout)),
              IconButton(onPressed: () {
                Navigator.pushNamed(context, '/file/create');
              }, icon: Icon(Icons.file_copy)),
            ],
            title: TextField(
              controller: searchController,
              decoration: const InputDecoration(labelText: 'Search'),
            )),
        body: BlocListener<SearchBloc, SearchState>(
          listener: (context, state) {
            if (state is SearchError) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state is SearchS) {
                final users = state.items;
                return ListView.builder(
                  itemBuilder: (context, index) {
                    final user = users[index];
                    late Icon leading;
                    switch (user.level) {
                      case UserLevel.auth:
                        leading = Icon(Icons.account_circle_sharp);

                        break;
                      case UserLevel.unauth:
                        leading = Icon(Icons.account_circle_outlined);
                        break;
                      default:
                        leading = Icon(Icons.account_circle_outlined);
                    }
                    return ListTile(
                      leading: leading,
                      title: Text(user.name),
                      subtitle: ListTile(
                        title: Text(user.id),
                        subtitle: Text(user.files.join(' ')),
                      ),
                      onLongPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return UserCreatePage(user: user.toUser());
                        }));
                      },
                    );
                  },
                  itemCount: users.length,
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}

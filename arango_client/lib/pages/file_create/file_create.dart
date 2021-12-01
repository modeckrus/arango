import '../../model/file.dart';
import 'bloc/file_create_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FileCreatePage extends StatefulWidget {
  const FileCreatePage({Key? key}) : super(key: key);

  @override
  _FileCreatePageState createState() => _FileCreatePageState();
}

class _FileCreatePageState extends State<FileCreatePage> {
  TextEditingController nameController = TextEditingController();
  FileType fileType = FileType.file;
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FileCreateBloc(),
      child: SafeArea(
        top: false,
        child: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              actions: [],
            ),
            body: BlocListener<FileCreateBloc, FileCreateState>(
              listener: (context, state) {
                String text = '';
                if (state is FileCreateErrorS) {
                  text = 'Error: ${state.error}';
                } else if (state is FileCreateLoadingS) {
                  text = 'Loading...';
                } else if (state is FileCreateSuccesS) {
                  text = 'Succes';
                }
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(text)));
              },
              child: Column(
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  DropdownButton<FileType>(
                    items: const [
                      DropdownMenuItem(
                        child: Text('file'),
                        value: FileType.file,
                      ),
                      DropdownMenuItem(
                        child: Text('image'),
                        value: FileType.image,
                      ),
                    ],
                    onChanged: (newType) {
                      if (newType != null) {
                        setState(() {
                          fileType = newType;
                        });
                      }
                    },
                    value: fileType,
                  ),
                  MaterialButton(
                    onPressed: () {
                      BlocProvider.of<FileCreateBloc>(context).add(
                          FileCreateInitialE(
                              name: nameController.text, type: fileType));
                    },
                    child: const Text(
                      'Add',
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

import 'package:arango_client/model/file.dart';
import 'package:arango_client/pages/file_create/bloc/file_create_bloc.dart';
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
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          actions: [],
        ),
        body: Column(
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
                BlocProvider.of<FileCreateBloc>(context).add(FileCreateInitialE(
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
  }
}

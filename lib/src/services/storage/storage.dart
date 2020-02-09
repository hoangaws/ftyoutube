import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class Storage {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final String path;
  StorageReference storageRef;

  Storage({this.path}) {
    storageRef = _storage.ref().child(path);
  }

  Future<void> downloadFile(String pathDir) async {
    StorageReference fileRef = storageRef.child(pathDir);
    final String url = await fileRef.getDownloadURL();

    final Directory systemTempDir = Directory.systemTemp;
    final File tempFile = File('${systemTempDir.path}/${pathDir}');
    if (tempFile.existsSync()) {
      await tempFile.delete();
    }
    await tempFile.create();
    final StorageFileDownloadTask task = fileRef.writeToFile(tempFile);
    final int byteCount = (await task.future).totalByteCount;
    final String name = await fileRef.getName();
    final String path = await fileRef.getPath();
    print(
      'Success!\nDownloaded $name \nUrl: $url'
      '\npath: $path \nBytes Count :: $byteCount',
    );

    var aa = tempFile.path;

    print('local path: $aa');

  }
}

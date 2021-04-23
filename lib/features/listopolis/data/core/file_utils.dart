
import 'package:path_provider/path_provider.dart';
import 'dart:io';



class FileUtils{
  static Future<String> get getFilePath async{
    final directory = await getExternalStorageDirectory();
    if(directory != null)
      return directory.path;
    else throw Error();
  }
  static Future<File> get getBackupFile async{
    final path = await getFilePath;
    return File('$path/listopolis_backup.txt');
  }
  static Future<File> saveToBackup(String content) async{
    final backUpFile = await getBackupFile;
    return backUpFile.writeAsString(content);
  }
   static Future<String> readFromBackup() async{
    try{
    final backUpFile = await getBackupFile;
    String content = await backUpFile.readAsString();
    return content;
    }catch(e){
      return "";
    }
  }
}
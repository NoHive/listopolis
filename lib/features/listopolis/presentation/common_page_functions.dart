import 'package:flutter/material.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';

mixin CommonPageFunctions{
  Widget showAppError(String showMessage){
    return Text(showMessage);
  }

  Widget showLoadingIndicator(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }
  Widget showInitial(){
    return Center(
      child: Text("App wurde gestartet"),
    );
  }

  String mapFailureToLocalizedString(Failure fail){
    return fail.map(
      deviceOffline: (f) => "Gerät hat keine Internetverbindung", 
      serverConnectFailed: (f) => "Der Service ist nicht erreichbar", 
      serviceAccessFailed: (f) => "Beim Zugriff auf den Service ist ein Fehler aufgetreten",
      userAuthentificationFailed: (f) => "Die Authentifizierung des Benutzers ist fehlgeschlagen!",
      );
      
  }

   showOfflineDialog(BuildContext context){    
    showDialog(context: context,
    builder: (context) {
      return AlertDialog(
      content: Text("Dein Smartphone ist nicht mit dem Internet verbunden!", style: ListColors.DEF_TEXT_STYLE),
      backgroundColor: ListColors.DIALOG_BACKGROUND,
      );
    },
    );
  }
}
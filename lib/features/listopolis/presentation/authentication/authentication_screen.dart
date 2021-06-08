import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/features/listopolis/application/authentication/authentication_bloc.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> with CommonPageFunctions{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
    appBar: AppBar(
        title: SingleChildScrollView(scrollDirection: Axis.horizontal, child:  Text("Anmelden", style: ListColors.DEF_TEXT_STYLE,)),
        backgroundColor: ListColors.APP_BAR_COLOR,
    ),
    body: Container(
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state){
            return state.map(
              initial: (s) => _buildSimpleAuthGui(context, "Du bist noch nicht angemeldet"), 
              waitingForService: (s) => showLoadingIndicator(), 
              signedIn: (s) => _buildSimpleAuthGui(context, "Du wurdest erfolgreich angemeldet"),
              signedOut: (s) => _buildSimpleAuthGui(context, "Du wurdest erfolgreich abgemeldet"),
              error: (s) =>  _buildSimpleAuthGui(context, mapFailureToLocalizedString(s.failure)),
            );
          },
        ),
        color: ListColors.LIST_BACKGROUND,
      ),
    );
  }
  
  Widget _buildSignStatusTxt(BuildContext context, String msg){
    return SingleChildScrollView(scrollDirection: Axis.horizontal, child:  Text(msg, style: ListColors.DEF_TEXT_STYLE,));
  }
  Widget _buildSignInBtn(BuildContext context){
      return MaterialButton(
        onPressed: (){
        BlocProvider.of<AuthenticationBloc>(context)..add(AuthenticationEvent.signInStarted());
        },
        child: Text("Mit Google Konto anmeldem", style: ListColors.DEF_TEXT_STYLE),
        color: ListColors.DIALOG_BUTTON,
      );
  }
  Widget _buildSignOutBtn(BuildContext context){
      return MaterialButton(
        onPressed: (){
        BlocProvider.of<AuthenticationBloc>(context)..add(AuthenticationEvent.signOutStarted());
        },
        child: Text("Google Konto abmeldem", style: ListColors.DEF_TEXT_STYLE),
        color: ListColors.DIALOG_BUTTON,
      );
  }
  
 
  Widget _buildSimpleAuthGui(BuildContext context, String msg){
    return //Expanded(
      //flex: 1,
      //child:  
      Container(
        color: Colors.red,
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  _buildSignInBtn(context),
                  _buildSignOutBtn(context),
                  _buildSignStatusTxt(context, msg)
                ],
             ),
         width: double.maxFinite,
      
      
      
    );
  }
}
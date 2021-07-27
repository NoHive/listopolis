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
              initial: (s) => _buildSignInGui(context, "Du bist abgemeldet"), 
              waitingForService: (s) => showLoadingIndicator(), 
              signedIn: (s) => _buildSignOutGui(context, "Du bist angemeldet"),
              signedOut: (s) => _buildSignInGui(context, "Du bist abgemeldet"),
              error: (s) =>  showAppError( mapFailureToLocalizedString(s.failure)),
            );
          },
        ),
        color: ListColors.LIST_BACKGROUND,
      ),
    );
  }

  Widget _buildAppBar(BuildContext context){
    return SingleChildScrollView(scrollDirection: Axis.horizontal, child:  Text("Anmelden", style: ListColors.DEF_TEXT_STYLE,));
  }
  
  Widget _buildSignStatusTxt(BuildContext context, String msg){
    return SingleChildScrollView(scrollDirection: Axis.horizontal, child:  Text(msg, style: ListColors.DEF_TEXT_STYLE,));
  }
  Widget _buildSignInBtn(BuildContext context){
    return IconButton(icon: Icon(Icons.login_rounded), 
                      onPressed: () {
                        BlocProvider.of<AuthenticationBloc>(context)..add(AuthenticationEvent.signInStarted());
                      },
                      color: ListColors.ICON_ACTIVE_LIST_CEATION_MODE,
    );
      // return MaterialButton(
      //   onPressed: (){
      //   BlocProvider.of<AuthenticationBloc>(context)..add(AuthenticationEvent.signInStarted());
      //   },
      //   child: Text("Mit Google Konto anmeldem", style: ListColors.DEF_TEXT_STYLE),
      //   color: ListColors.DIALOG_BUTTON,
      // );
  }
  Widget _buildSignOutBtn(BuildContext context){
    return IconButton(icon: Icon(Icons.logout), 
                      onPressed: () {
                        BlocProvider.of<AuthenticationBloc>(context)..add(AuthenticationEvent.signOutStarted());
                      }
    );
      // return MaterialButton(
      //   onPressed: (){
      //   BlocProvider.of<AuthenticationBloc>(context)..add(AuthenticationEvent.signOutStarted());
      //   },
      //   child: Text("Google Konto abmeldem", style: ListColors.DEF_TEXT_STYLE),
      //   color: ListColors.DIALOG_BUTTON,
      // );
  }
  
 
  Widget _buildSignInGui(BuildContext context, String msg){
    return //Expanded(
      //flex: 1,
      //child:  
      Container(
        color: ListColors.BACKGROUND_DARKER,
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  _buildSignInBtn(context),
                  _buildSignStatusTxt(context, msg)
                ],
             ),
         width: double.maxFinite,
      
      
      
    );
  }
   Widget _buildSignOutGui(BuildContext context, String msg){
    return //Expanded(
      //flex: 1,
      //child:  
      Container(
        color: ListColors.BACKGROUND_DARKER,
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  _buildSignOutBtn(context),
                  _buildSignStatusTxt(context, msg)
                ],
             ),
         width: double.maxFinite,
      
      
      
    );
  }
}
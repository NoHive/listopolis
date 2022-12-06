import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/configure_injection.dart';
import 'package:listopolis/core/local_storage/shared_preferences_keys.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/authentication/authentication_bloc.dart';
import 'package:listopolis/features/listopolis/application/connectivity/connectivity_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/online_lists/onlinelists_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/core/repetition_utils.dart';
import 'package:listopolis/features/listopolis/data/datasources/data_source.dart';
import 'package:listopolis/features/listopolis/data/datasources/local_storage.dart';
import 'package:listopolis/features/listopolis/data/repositories/repository_implementations.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/active_list_main_page.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Future<SharedPreferences> init() async {

//   return Future.value(await SharedPreferences.getInstance());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await init();
  //runApp(ListopolisRoot(prefs));
  AwesomeNotifications().initialize( 
    null,
    [ NotificationChannel(
                      channelKey: RepetitionUtil.CHANNEL_KEY, 
                      channelName: RepetitionUtil.CHANNEL_NAME,
                      channelDescription: RepetitionUtil.CHANNEL_DESCRIPTION,
                      channelGroupKey: RepetitionUtil.CHANNEL_GROUP,
                      defaultColor: Color.fromARGB(255, 11, 81, 99),
                      playSound: true,
                      enableLights: true,
                      channelShowBadge: true,
                      
                      )
   ]
  );

  await configureDependencies();
  runApp(ListopolisRoot());
}

class ListopolisRoot extends StatelessWidget {
  // final SharedPreferences preferences;
  const ListopolisRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
              BlocProvider<ActivelistBloc>(
                create: (context) => getIt<ActivelistBloc>(),
              ),
              BlocProvider<TemplateBloc>(
                create: (context) => getIt<TemplateBloc>(),
              ),
              BlocProvider<CreatelistBloc>(
                create: (context) => getIt<CreatelistBloc>(),
              ),
              BlocProvider<OnlinelistsBloc>(
                create: (context) => getIt<OnlinelistsBloc>(),
              ),
              BlocProvider<AuthenticationBloc>(
                create: (context) => getIt<AuthenticationBloc>(),
              ),
              BlocProvider<ConnectivityBloc>(lazy: false,
                create: (context) => getIt<ConnectivityBloc>(),
              ),
            ],
      child: MaterialApp(
          title: "Listopolis",
          color: ListColors.APP_BAR_COLOR,
          home: ActiveListMainPage(),
          ),
    );
  }
}

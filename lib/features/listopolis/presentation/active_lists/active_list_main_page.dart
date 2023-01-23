import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/authentication/authentication_bloc.dart';
import 'package:listopolis/features/listopolis/application/connectivity/connectivity_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/online_lists/onlinelists_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/core/repetition_utils.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/create_active_list_screen.dart';
import 'package:listopolis/features/listopolis/presentation/authentication/authentication_screen.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';
import 'package:listopolis/features/listopolis/presentation/online_lists/online_list_screen.dart';
import 'package:listopolis/features/listopolis/presentation/templates/template_main_page.dart';
import 'package:clipboard/clipboard.dart';
import 'package:listopolis/main.dart';

class ActiveListMainPage extends StatefulWidget {
  ActiveListMainPage({Key? key}) : super(key: key);

  @override
  _ActiveListMainPageState createState() => _ActiveListMainPageState();
}

class _ActiveListMainPageState extends State<ActiveListMainPage>
    with CommonPageFunctions {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<ActivelistBloc>(context)..add(ActivelistEvent.load());

    BlocProvider.of<AuthenticationBloc>(context)
      ..add(AuthenticationEvent.requestedSignInStatus());
  }

  @override
  void initState() {
    // TODO: implement initState
    _requestNotificationPermissions(context);
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: NotificationController.onActionReceivedMethod,
      onNotificationDisplayedMethod: (receivedNotification) async {
        NotificationController.onNotificationDisplayedMethod(
            receivedNotification);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              ActiveListStrings.APP_BAR_TITLE,
              style: ListColors.DEF_TEXT_STYLE,
            )),
        actions: <Widget>[appBarToggles(context), _buildOverflowMenue(context)],
        backgroundColor: ListColors.APP_BAR_COLOR,
      ),
      body: Container(
        child: BlocBuilder<ActivelistBloc, ActivelistState>(
          builder: (context, state) {
            return state.map(
              initial: (s) => showInitial(),
              loading: (s) => showLoadingIndicator(),
              loaded: (s) => buildLoadedLists(context, s.userLists, true),
              listOrderChanged: (s) => buildReorderList(context, s.userLists),
              error: (s) =>
                  showAppError(mapFailureToLocalizedString(s.failure)),
              loadedAll: (s) => buildLoadedLists(context, s.userLists, false),
              // initCreateList: (s) => showLoadingIndicator()
            );
          },
        ),
        color: ListColors.LIST_BACKGROUND,
      ),
    );
  }

  Widget _buildOverflowMenue(BuildContext context) {
    return PopupMenuButton<String>(
        color: ListColors.DIALOG_BACKGROUND,
        onSelected: _onSelectMenueItem,
        itemBuilder: (BuildContext context) {
          return ActiveListPageMenueStrings.choises.map((menueOption) {
            return PopupMenuItem<String>(
              value: menueOption,
              child: Text(
                menueOption,
                style: TextStyle(fontSize: 10, color: ListColors.TEXT),
              ),
            );
          }).toList();
        });
  }

  Widget appBarToggles(BuildContext context) {
    return BlocBuilder<ActivelistBloc, ActivelistState>(
        builder: (context, state) {
      return state.map(
        initial: (s) => buildToggleButtons([false, true], context),
        loading: (s) => buildToggleButtons([false, true], context),
        loaded: (s) => buildToggleButtons([false, true], context),
        listOrderChanged: (s) => buildToggleButtons([true, false], context),
        error: (s) => buildToggleButtons([false, true], context),
        loadedAll: (s) => buildToggleButtons([false, true], context),
      );
    });
  }

  ToggleButtons buildToggleButtons(List<bool> selected, BuildContext context) {
    List<Widget> toggleItems = [Icon(Icons.swap_vert), Icon(Icons.list)];
    return ToggleButtons(
      children: toggleItems,
      isSelected: selected,
      selectedColor: ListColors.ICON_ACTIVE_LIST_CEATION_MODE,
      //color: Colors.lightBlue,
      onPressed: (idx) {
        ActivelistBloc aBloc = BlocProvider.of<ActivelistBloc>(context);
        if (idx == 0) {
          aBloc.add(ActivelistEvent.loadForReorder());
        } else {
          aBloc.add(ActivelistEvent.load());
        }
        // setState(() {

        // });
      },
    );
  }

  void _requestNotificationPermissions(BuildContext context) {
    AwesomeNotifications().isNotificationAllowed().then(
      (isAllowed) {
        if (!isAllowed) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Allow Notifications'),
              content: Text('Our app would like to send you notifications'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Don\'t Allow',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                TextButton(
                  onPressed: () => AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then((_) => Navigator.pop(context)),
                  child: Text(
                    'Allow',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  navigateToCreateListScreen(BuildContext context) {
    BlocProvider.of<CreatelistBloc>(context)
        .add(CreatelistEvent.startListCreation());
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<CreatelistBloc>(context),
          child: CreateListPage(BlocProvider.of<ActivelistBloc>(context),
              BlocProvider.of<TemplateBloc>(context)),
        ),
      ),
    );
  }

  navigateToEditListScreen(BuildContext context, ActiveList list) {
    BlocProvider.of<CreatelistBloc>(context)
        .add(CreatelistEvent.editActiveList(list: list));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<CreatelistBloc>(context),
          child: CreateListPage(BlocProvider.of<ActivelistBloc>(context),
              BlocProvider.of<TemplateBloc>(context)),
        ),
      ),
    );
  }

  navigateToTemplateMainScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: BlocProvider.of<TemplateBloc>(context),
          child: TemplateMainPage(BlocProvider.of<ActivelistBloc>(context),
              BlocProvider.of<CreatelistBloc>(context)),
        ),
      ),
    );
  }

  navigateToOnlineListsScreen(BuildContext context) {
    ConnectivityBloc connectionCheck =
        BlocProvider.of<ConnectivityBloc>(context);

    if (connectionCheck.state == ConnectivityState.online()) {
      BlocProvider.of<OnlinelistsBloc>(context)
        ..add(OnlinelistsEvent.listViewRequested());
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: BlocProvider.of<OnlinelistsBloc>(context),
            child: OnlineListScreen(),
          ),
        ),
      );
    } else {
      showOfflineDialog(context);
    }
  }

  navigateToAuthenticationScreen(BuildContext context) {
    //BlocProvider.of<OnlinelistsBloc>(context)..add(OnlinelistsEvent.authenticateUser());
    //BlocProvider.of<OnlinelistsBloc>(context)..add(OnlinelistsEvent.listViewRequested());
    ConnectivityBloc connectionCheck =
        BlocProvider.of<ConnectivityBloc>(context);

    if (connectionCheck.state == ConnectivityState.online()) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: BlocProvider.of<AuthenticationBloc>(context),
            child: AuthenticationScreen(),
          ),
        ),
      );
    } else {
      showOfflineDialog(context);
    }
  }

  _onSelectMenueItem(String choice) {
    if (choice == ActiveListPageMenueStrings.CREATE_NEW_LIST) {
      navigateToCreateListScreen(context);
    } else if (choice == ActiveListPageMenueStrings.EDIT_TEMPlATES) {
      navigateToTemplateMainScreen(context);
    } else if (choice == ActiveListPageMenueStrings.SAVE_CURRENT_USER_DATA) {
      BlocProvider.of<ActivelistBloc>(context)
          .add(ActivelistEvent.backupData());
    } else if (choice == ActiveListPageMenueStrings.LOAD_EXTERN_DATA) {
      _replaceDateWithBackup(context);
      //BlocProvider.of<ActivelistBloc>(context).add(ActivelistEvent.loadDataFromBackup());
    } else if (choice == ActiveListPageMenueStrings.CREATE_LIST_CLIPBOARD) {
      BlocProvider.of<ActivelistBloc>(context)
          .add(ActivelistEvent.createListFromClipBoard());
      //BlocProvider.of<ActivelistBloc>(context).add(ActivelistEvent.loadDataFromBackup());
    } else if (choice == ActiveListPageMenueStrings.ONLINE_LISTS) {
      AuthenticationBloc authBloc =
          BlocProvider.of<AuthenticationBloc>(context);
      //authBloc.add(AuthenticationEvent.requestedSignInStatus());
      if (authBloc.state == AuthenticationState.signedIn()) {
        navigateToOnlineListsScreen(context);
      } else {
        navigateToAuthenticationScreen(context);
      }
    } else if (choice == ActiveListPageMenueStrings.SIGN_IN) {
      navigateToAuthenticationScreen(context);
    } else if (choice == ActiveListPageMenueStrings.SHOW_ALL_LISTS) {
      BlocProvider.of<ActivelistBloc>(context).add(ActivelistEvent.loadAll());
    }else if (choice == ActiveListPageMenueStrings.EXPORT_ALL_NOTIFICATIONS) {
      _copyNotificationsToClipboard();
    } else {
      print("not supported");
    }
  }

  Widget buildLoadedLists(
      BuildContext context, List<ActiveList> listParam, bool filter) {
    List<ActiveList> lists = listParam.toList();
    if (filter) {
      lists = lists.where((list) {
        return !list.repeat || RepetitionUtil.shouldShowToday(list);
      }).toList();
    }
    lists.sort((l1, l2) => l1.position.compareTo(l2.position));

    final int listCount = lists.length;
    return ListView.builder(
      itemBuilder: (context, i) {
        return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 1),
            decoration: _buildDecoration(lists[i]),
            child: ExpansionTile(
              leading: _buildMainItemExpandableTrailing(lists[i], context),
              title: _buildMainItemExpandableTitle(lists[i], context),
              initiallyExpanded: lists[i].opened,
              children: [
                _buildSubElements(context, lists[i], lists[i].listItems)
              ],
            ));
      },
      itemCount: listCount,
      shrinkWrap: false,
    );
  }

  Decoration _buildDecoration(ActiveList list) {
    if (list.repeat) {
      return BoxDecoration(
          gradient: ListColors.LIST_ITEM_GRADIENT,
          border: Border(left: BorderSide(color: Colors.orange, width: 1)));
    }
    return BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT);
  }

  Widget _buildMainItemExpandableIcon(ActiveList list, BuildContext context) {
    Icon leadingIcon;
    if (list.type == ListType.todo()) {
      leadingIcon =
          Icon(Icons.playlist_add_check, color: ListColors.LIST_ICON_TODO);
    } else {
      leadingIcon =
          Icon(Icons.lightbulb_outline, color: ListColors.LIST_ICON_REMEMBER);
    }
    return leadingIcon;
  }

  Widget _buildMainItemExpandableTitle(ActiveList list, BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //leadingIcon,
          Text(
            list.name,
            style: ListColors.DEF_TEXT_STYLE,
          )
        ],
      ),
    );

    // return ListTile(
    //           leading: leadingIcon,
    //           title:  Text(list.name),
    //           dense: true,
    //       );
    // return Text(list.name);
  }

  _buildMainItemExpandableTrailing(ActiveList list, BuildContext context) {
    const String locale = "de";

    return PopupMenuButton(
      color: ListColors.DIALOG_BACKGROUND,
      child: _buildMainItemExpandableIcon(list, context),
      onSelected: (element) {
        if (element == MainListItemMenueStr.DELETE) {
          _deleteList(context, list);
        } else if (element == MainListItemMenueStr.EDIT) {
          navigateToEditListScreen(context, list);
        } else if (element == MainListItemMenueStr.USE_AS_TEMPLATE) {
          BlocProvider.of<ActivelistBloc>(context)
            ..add(ActivelistEvent.useListAsTemplate(list: list));
        } else if (element == MainListItemMenueStr.COPY_LIST_TO_CLIPOARD) {
          BlocProvider.of<ActivelistBloc>(context)
            ..add(ActivelistEvent.copyListToClipBoard(list: list));
        }
      },
      itemBuilder: (context) {
        return <PopupMenuItem>[
          new PopupMenuItem(
              value: MainListItemMenueStr.DELETE,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.delete,
                    color: ListColors.ICON_DELTE,
                  ),
                  Text(
                    "  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.DELETE, locale)}",
                    style: ListColors.DEF_TEXT_STYLE,
                  ),
                ],
              )),
          new PopupMenuItem(
              value: MainListItemMenueStr.EDIT,
              child: Row(
                children: <Widget>[
                  Icon(Icons.edit, color: ListColors.ICON_EDIT),
                  Text(
                      "  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.EDIT, locale)}",
                      style: ListColors.DEF_TEXT_STYLE),
                ],
              )),
          new PopupMenuItem(
              value: MainListItemMenueStr.USE_AS_TEMPLATE,
              child: Row(
                children: <Widget>[
                  Icon(Icons.receipt, color: ListColors.ICON_LIST_TO_TEMPLATE),
                  Text(
                      "  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.USE_AS_TEMPLATE, locale)}",
                      style: ListColors.DEF_TEXT_STYLE),
                ],
              )),
          new PopupMenuItem(
              value: MainListItemMenueStr.COPY_LIST_TO_CLIPOARD,
              child: Row(
                children: <Widget>[
                  Icon(Icons.copy,
                      color: ListColors.ICON_COPY_LIST_TO_CLIPBOARD),
                  Text(
                      "  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.COPY_LIST_TO_CLIPOARD, locale)}",
                      style: ListColors.DEF_TEXT_STYLE),
                ],
              ))
        ];
      },
    );
  }

  _replaceDateWithBackup(BuildContext context) {
    ActivelistBloc listBloc = BlocProvider.of<ActivelistBloc>(context);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            MaterialButton(
              onPressed: () {
                listBloc.add(ActivelistEvent.loadDataFromBackup());
                Navigator.of(context).pop();
              },
              child: Text("Ja, Daten überschreiben",
                  style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Ups...nee bitte nicht!",
                  style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
            )
          ],
          content: Text(
              "Willst du die aktuellen Listen und Vorlagen durch die Sicherung ersetzen?",
              style: ListColors.DEF_TEXT_STYLE),
          backgroundColor: ListColors.DIALOG_BACKGROUND,
        );
      },
    );
  }

  Widget buildReorderList(BuildContext context, List<ActiveList> listitems) {
    List<Widget> childrenWidgets = _buildReorderListItems(listitems, context);
    Map<int, ActiveList> posToList =
        Map.fromEntries(listitems.map((e) => MapEntry(e.position, e)));

    return Theme(
        data: ThemeData(canvasColor: Colors.transparent),
        child: ReorderableListView(
          // header: headerWidget,
          children: childrenWidgets,
          onReorder: (oldIdx, newIdx) {
            int realNewIdx = oldIdx < newIdx ? newIdx : newIdx + 1;
            int realOldIdx = oldIdx + 1;
            ActivelistBloc aBloc = BlocProvider.of<ActivelistBloc>(context);
            ActiveList? changedList = posToList[realOldIdx];
            if (changedList != null)
              aBloc.add(ActivelistEvent.changeListPosition(
                  list: changedList,
                  oldIndex: realOldIdx,
                  newIndex: realNewIdx));
          },
        ));
  }

  List<Widget> _buildReorderListItems(
      List<ActiveList> listitemsPara, BuildContext context) {
    List<ActiveList> listitems = listitemsPara.toList();
    listitems = listitems.where((list) {
      return !list.repeat || RepetitionUtil.shouldShowToday(list);
    }).toList();
    listitems.sort((l1, l2) => l1.position.compareTo(l2.position));
    List<Widget> erg = [];
    for (ActiveList lItem in listitems) {
      erg.add(_buildReorderListItem(context, lItem));
    }
    //listitems.map((e){_buildListItemInput(context, e);}).toList();
    return erg;
  }

  Widget _buildReorderListItem(BuildContext context, ActiveList listItem) {
    return Container(
      key: ValueKey(listItem.id),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 1)),
          gradient: ListColors.LIST_ITEM_GRADIENT),
      child: ListTile(
          title: Text(
        "${listItem.position} - ${listItem.name}",
        style: ListColors.DEF_TEXT_STYLE,
      )),
    );
  }

  _deleteList(BuildContext context, ActiveList list) {
    ActivelistBloc listBloc = BlocProvider.of<ActivelistBloc>(context);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: [
            MaterialButton(
              onPressed: () {
                listBloc.add(ActivelistEvent.deleteActiveList(list: list));
                Navigator.of(context).pop();
              },
              child: Text("Ja, Liste löschen",
                  style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Ups...nee bitte nicht!",
                  style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
            )
          ],
          content: Text("Willst du die Liste wirklich löschen?",
              style: ListColors.DEF_TEXT_STYLE),
          backgroundColor: ListColors.DIALOG_BACKGROUND,
        );
      },
    );
  }

  Widget _buildSubElements(BuildContext ontext, ActiveList list,
      List<ActiveListPosition> listItems) {
    final int listCount = listItems.length;

    return ListView.builder(
        itemBuilder: (context, i) {
          return Container(
              alignment: Alignment.center,
              child: _buildActiveListItem(context, list, listItems[i]));
        },
        itemCount: listCount,
        shrinkWrap: true,
        physics: ClampingScrollPhysics());
    // return result;
  }

  Widget _buildActiveListItem(
      BuildContext context, ActiveList list, ActiveListPosition listPosition) {
    if (list.type == ListType.todo()) {
      return Dismissible(
        key: new Key(listPosition.id),
        onDismissed: (direction) {
          BlocProvider.of<ActivelistBloc>(context)
            ..add(ActivelistEvent.deleteActiveListPosition(
                list: list, position: listPosition));
        },
        child: _buildListItemElement(
            listPosition), //ListTile(title: Text(listPosition.name, style: ListColors.DEF_TEXT_STYLE), ),
        background: _buildDismissBarItem(context, list, listPosition),
      );
    } else {
      return _buildListItemElement(listPosition);
    }
  }
  
  void _copyNotificationsToClipboard() async{
    String notificationStr = await _createNotificationString();
    await FlutterClipboard.copy(notificationStr);
  }

  Future<String> _createNotificationString() async{
    StringBuffer strbuffer = StringBuffer();
    List<NotificationModel> notificationEntries =await  AwesomeNotifications().listScheduledNotifications();
    for(NotificationModel entry in notificationEntries){
      strbuffer.write(entry.toString());
    }
    return Future.value(strbuffer.toString());
  }
}

Widget _buildListItemElement(ActiveListPosition listPosition) {
  return Container(
    decoration: BoxDecoration(
        gradient: ListColors.LIST_ITEM_GRADIENT,
        border: Border(top: BorderSide(width: 1))),
    child: ListTile(
      title: Text(listPosition.name, style: ListColors.DEF_TEXT_STYLE),
    ),
  );
}

Widget _buildDismissBarItem(
    BuildContext context, ActiveList list, ActiveListPosition listPosition) {
  return new Container(
    decoration: BoxDecoration(gradient: ListColors.DISMISS_ITEM_GRADIENT),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.check_circle_outline,
              color: Colors.blueAccent,
            ))),
  );
}

class ActiveListStrings implements ListopolisString {
  static const APP_BAR_TITLE = "Listen";
}

class ActiveListPageMenueStrings {
  static const String CREATE_NEW_LIST = "Liste anlegen";
  static const String CREATE_LIST_CLIPBOARD = "Liste empfangen";
  static const String EDIT_TEMPlATES = "Vorlagen";
  static const String ONLINE_LISTS = "Online Listen";
  static const String SIGN_IN = "Anmelden";
  static const String SAVE_CURRENT_USER_DATA = "Daten sichern";
  static const String LOAD_EXTERN_DATA = "Daten aus Sicherung einlesen";
  static const String SHOW_ALL_LISTS = "Auch zukünftige Listen zeigen";
  static const String EXPORT_ALL_NOTIFICATIONS = "Erinnerungen exportieren";

  static const List<String> choises = [
    CREATE_NEW_LIST,
    CREATE_LIST_CLIPBOARD,
    EDIT_TEMPlATES,
    SAVE_CURRENT_USER_DATA,
    LOAD_EXTERN_DATA,
    SIGN_IN,
    ONLINE_LISTS,
    SHOW_ALL_LISTS,
    EXPORT_ALL_NOTIFICATIONS
  ];
}

class MainListItemMenueStr {
  static const String EDIT = "edit";
  static const String DELETE = "delete";
  static const String USE_AS_TEMPLATE = "use_as_template";
  static const String COPY_LIST_TO_CLIPOARD = "copy_list_to_clipboard";

  static String buildLocalName(String str, String locale) {
    if (locale == "de") {
      if (str == EDIT)
        return "Bearbeiten";
      else if (str == DELETE)
        return "Löschen";
      else if (str == USE_AS_TEMPLATE)
        return "Vorlage erstellen";
      else if (str == COPY_LIST_TO_CLIPOARD)
        return "Liste teilen";
      else
        return "error";
    } else {
      return str;
    }
  }
}

class NotificationController {
  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {
    // Your code goes here
    // if (ListopolisRoot.navigatorKey.currentContext != null)
    //   BlocProvider.of<ActivelistBloc>(
    //       ListopolisRoot.navigatorKey.currentContext!)
    //     ..add(ActivelistEvent.reminderDisplayed());
  }

  /// Use this method to detect when the user taps on a notification or action button
  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    // Your code goes here
    if (RepetitionUtil.CHANNEL_KEY == receivedAction.channelKey) {
      AwesomeNotifications()
          .getGlobalBadgeCounter()
          .then((value) => AwesomeNotifications().setGlobalBadgeCounter(0));
    }

    // Navigate into pages, avoiding to open the notification details page over another details page already opened
  }
}

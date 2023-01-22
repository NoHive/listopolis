import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

@Singleton(as: IConnectivityChecker)
class ConnectivityImpl implements IConnectivityChecker {
  final Connectivity _connectivity;
  Function? _callWhenNoConnection;
  Function? _callWhenConnection;

  ConnectivityImpl(this._connectivity);

  @override
  StreamSubscription registerForConnectivityUpdate(
      Function _callWhenNoConnection, Function _callWhenConnection) {
    // TODO: implement registerForConnectivityUpdate
    this._callWhenNoConnection = _callWhenNoConnection;
    this._callWhenConnection = _callWhenConnection;
    return _connectivity.onConnectivityChanged.listen(_onOnlineStateChange);
  }

  Future<void> _onOnlineStateChange(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
        _callWhenConnection?.call();
        break;
      default:
        _callWhenNoConnection?.call();
        break;
    }
  }
}

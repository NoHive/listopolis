import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';
part 'connectivity_bloc.freezed.dart';

@injectable
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final IConnectivityChecker _connectivityChecker;
  StreamSubscription? checkerSubscription;
  ConnectivityBloc(IConnectivityChecker aConnectivityChecker):  _connectivityChecker=aConnectivityChecker, super(_Initial()){
   
   checkerSubscription = _connectivityChecker.registerForConnectivityUpdate(_callWhenNoConnection, _callWhenConnection);
    on<ConnectivityEvent>(_onEvent);
  }
  
  void _onEvent(ConnectivityEvent e, Emitter<ConnectivityState> emit){
    e.when(
          started: () => emit(ConnectivityState.initial()), 
          goOnline: () => emit(ConnectivityState.online()), 
          goOffline: () => emit(ConnectivityState.offline())
    );
  }

  _callWhenNoConnection() {
    
    add(ConnectivityEvent.goOffline());
  }
  _callWhenConnection(){
    add(ConnectivityEvent.goOnline());
  }

  @override
  Future<void> close() async {
    // TODO: implement close
    await checkerSubscription?.cancel();
    return super.close();

  }
}

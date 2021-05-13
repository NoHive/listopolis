import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';
import 'package:listopolis/features/listopolis/data/core/firebase_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as:IStreamRepository)
class FireStorePublicListsRepository implements IStreamRepository{
    final FirebaseFirestore _firebaseFirestore;

    FireStorePublicListsRepository(this._firebaseFirestore);

    @override
    Future<Either<Failure, List<ActiveList>>> changeListPosition(ActiveList list, int oldPosition, int newPosition) {
      // TODO: implement changeListPosition
      throw UnimplementedError();
    }
  
    @override
    Future<Either<Failure, List<ActiveList>>> deleteActiveList(ActiveList list) {
      // TODO: implement deleteActiveList
      throw UnimplementedError();
    }
  
    @override
    Future<Either<Failure, List<ActiveList>>> deleteActiveListPosition(ActiveList list, ActiveListPosition position) {
      // TODO: implement deleteActiveListPosition
      throw UnimplementedError();
    }
  
    @override
    Stream<Either<Failure, List<ActiveList>>> getActiveLists() async*{

      final kAndBLists = await _firebaseFirestore.publicLists();

      
      yield* kAndBLists.activeListCollection.snapshots()
      .map((snapshot) => right<Failure, List<ActiveList>>(
            snapshot.docs.map((doc) => ActiveList.fromJson(doc.data())).toList()
        ),
      ).onErrorReturnWith((error) => left(Failure.serviceAccessFailed()));

      // TODO: implement getActiveLists
      //throw UnimplementedError();
    }
  
    @override
    Future<Either<Failure, Option<UserData>>> initDataSource() {
      // TODO: implement initDataSource
      throw UnimplementedError();
    }
  
    @override
    Future<Either<Failure, List<ActiveList>>> insertActiveList(CreateListParameter listParameter) {
      // TODO: implement insertActiveList
      throw UnimplementedError();
    }
  
    @override
    bool isInitialized() {
      // TODO: implement isInitialized
      throw UnimplementedError();
    }
  
    @override
    Future<Either<Failure, List<ActiveList>>> replaceActiveList(ActiveList list, CreateListParameter listParameter) {
    // TODO: implement replaceActiveList
    throw UnimplementedError();
  }

}
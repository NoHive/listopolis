import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/list/list_tools.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';
import 'package:listopolis/features/listopolis/data/core/firebase_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as:IStreamRepository)
class FireStorePublicListsRepository with ListOrder implements IStreamRepository {
    final FirebaseFirestore _firebaseFirestore;

    FireStorePublicListsRepository(this._firebaseFirestore);

    
    @override
    Future<Either<Failure, Unit>> deleteActiveList(List<ActiveList> existingLists, ActiveList list) async {
      // TODO: implement deleteActiveList
      final kAndBLists = await _firebaseFirestore.publicLists();
      try{
          await kAndBLists.activeListCollection.doc(list.id).delete();
          return right(unit);
      }on PlatformException catch (e){
          return left(Failure.serviceAccessFailed());
       }
    }
  
    ActiveList _changedListAfterDelete(ActiveList list, ActiveListPosition position){
        Map<String, ActiveListPosition> idToListPos = Map.fromIterable(list.listItems, key:(listItem) => listItem.id, value: (listItem) => listItem);
        Tuple2<Map<String, int>, Map<String, int>> posUpdatesAndUnchanged = ListOrder.neddedUpdatesOnDelete(position.position, list.listItems.map((e) => e.id).toList(), (aId) => idToListPos[aId]?.position);
        Map<String, int> posUpdates = posUpdatesAndUnchanged.value1;
        Map<String, int> unchangedPos = posUpdatesAndUnchanged.value2;
        List<ActiveListPosition> newPositions = [];
        posUpdates.forEach((key, value) {
          ActiveListPosition? updatePos = idToListPos[key];
          if(updatePos != null){
            newPositions.add(updatePos.copyWith(position:value));
          }
        });
        unchangedPos.forEach((key, value) {
          ActiveListPosition? unChangedPos = idToListPos[key];
          if(unChangedPos != null){
            newPositions.add(unChangedPos);
          }
        });

        return list.copyWith(listItems:newPositions);
    }

    @override
    Future<Either<Failure, Unit>> deleteActiveListPosition(List<ActiveList> existingLists, ActiveList list, ActiveListPosition position) async {

      // if it is not the last item
      if(list.listItems.length > 1){
        ActiveList updatedList = _changedListAfterDelete(list, position);
        final kAndBLists = await _firebaseFirestore.publicLists();
        try{
          await kAndBLists.activeListCollection.doc(updatedList.id).update(updatedList.toJson());
          return right(unit);
        }on PlatformException catch (e){
          return left(Failure.serviceAccessFailed());
        }
      }else{
        // if last item the whole list has to die
        return deleteActiveList(existingLists, list);
      }
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
    Future<Either<Failure, Unit>> insertActiveList(List<ActiveList> existingLists, CreateListParameter listParameter) async {
      ListInsertResult insertResult = listParameter.createNeededUpdateOnInsert(existingActiveLists: existingLists);
      //insertResult
      final kAndBLists = await _firebaseFirestore.publicLists();
      try{
        // Position changed because of insert at start -> update to Firestore
        for(ActiveList aList in insertResult.updatedLists){
           await kAndBLists.activeListCollection.doc(aList.id).update(aList.toJson());
        }
        // insert new List
        await kAndBLists.activeListCollection.doc(insertResult.newList.id).set(insertResult.newList.toJson());
        
        return right(unit);
      }on PlatformException catch (e){
        return left(Failure.serviceAccessFailed());
      }
    }
  
}
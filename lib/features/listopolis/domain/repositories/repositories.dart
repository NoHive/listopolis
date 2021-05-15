import 'package:dartz/dartz.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';

abstract class IRepository{
  Future<Either<Failure, List<ActiveList>>> getActiveLists();
  Future<Either<Failure, List<ActiveList>>> backupUserData();
  Future<Either<Failure, List<ActiveList>>> loadUserDataFromBackup();
  Future<Either<Failure, List<ActiveList>>> deleteActiveListPosition(ActiveList list, ActiveListPosition position);
  Future<Either<Failure, List<ActiveList>>> deleteActiveList(ActiveList list);
  Future<Either<Failure, List<ActiveList>>> createTemlateFromList(ActiveList list);
  Future<Either<Failure, List<ActiveList>>> insertActiveList(CreateListParameter listParameter);
  Future<Either<Failure, List<ActiveList>>> replaceActiveList(ActiveList list, CreateListParameter listParameter);
  Future<Either<Failure, List<ActiveList>>> changeListPosition(ActiveList list, int oldPosition, int newPosition);
  Future<Either<Failure, List<ActiveList>>> createListFromExternalJson(String jsonString);
  
  Future<Either<Failure, List<ListTemplate>>> changeTemplatePosition(ListTemplate template, int oldPosition, int newPosition);
  Future<Either<Failure, List<ListTemplate>>> getTemplates();
  Future<Either<Failure, List<ListTemplate>>> deleteTemplatePosition(ListTemplate list, ListTemplatePosition position);
  Future<Either<Failure, List<ListTemplate>>> deleteTemplate(ListTemplate list);
  Future<Either<Failure, List<ListTemplate>>> insertTemplate(CreateListParameter listParameter);
  Future<Either<Failure, List<ListTemplate>>> replaceTemplate(ListTemplate list, CreateListParameter listParameter);


  bool isInitialized();
  Future<Either<Failure, Option<UserData>>> initDataSource();
  Future<Either<Failure, Unit>> sendData();
}

abstract class IStreamRepository{
  Stream<Either<Failure, List<ActiveList>>> getActiveLists();
  Future<Either<Failure, List<ActiveList>>> deleteActiveListPosition(ActiveList list, ActiveListPosition position);
  Future<Either<Failure, List<ActiveList>>> deleteActiveList(ActiveList list);
  Future<Either<Failure, Unit>> insertActiveList(List<ActiveList> existingLists, CreateListParameter listParameter);
  Future<Either<Failure, List<ActiveList>>> replaceActiveList(ActiveList list, CreateListParameter listParameter);
  Future<Either<Failure, List<ActiveList>>> changeListPosition(ActiveList list, int oldPosition, int newPosition);

  
  bool isInitialized();
  Future<Either<Failure, Option<UserData>>> initDataSource();
}
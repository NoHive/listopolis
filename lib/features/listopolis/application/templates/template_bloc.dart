import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'template_event.dart';
part 'template_state.dart';
part 'template_bloc.freezed.dart';

class TemplateBloc extends Bloc<TemplateEvent, TemplateState> {
  final IRepository repository;
  TemplateBloc({@required this.repository}) : super(_Initial());

  @override
  Stream<TemplateState> mapEventToState(
    TemplateEvent event,
  ) async*{ 
    yield* event.map(
    load: (e) async*{
      yield TemplateState.loading();
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.getTemplates();
      
      yield activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r));
    },
    deleteTemplatePosition: (e) async*{
     // yield ActivelistState.loading();
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.deleteTemplatePosition(e.list, e.position);
      
      yield activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r));
    },
    insertNewTemplate: (e) async*{
      yield TemplateState.loading();
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.insertTemplate(e.listParameter);
      
      yield activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r));
    },
    deleteTemplate: (e) async*{
      yield TemplateState.loading();
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.deleteTemplate(e.list);
      
      yield activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r));
    },
    replaceTemplate: (e) async*{
      yield TemplateState.loading();
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.replaceTemplate(e.list, e.listParameter);
      
      yield activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r));
    },
    );
  }
}

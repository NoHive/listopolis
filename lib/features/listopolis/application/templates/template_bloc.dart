import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'template_event.dart';
part 'template_state.dart';
part 'template_bloc.freezed.dart';

@injectable
class TemplateBloc extends Bloc<TemplateEvent, TemplateState> {
  final IRepository repository;
  TemplateBloc({required this.repository}) : super(_Initial()){
    on<_LoadTemplates>((event, emit) => _emit_LoadTemplates(event, emit));
    on<_LoadTemplatesForReorder>((event, emit) => _emit_LoadTemplatesForReorder(event, emit));
    on<_InsertNewTemplate>((event, emit) => _emit_InsertNewTemplate(event, emit));
    on<_DeleteTemplatePosition>((event, emit) => _emit_DeleteTemplatePosition(event, emit));
    on<_DeleteTemplate>((event, emit) => _emit_DeleteTemplate(event, emit));
    on<_ReplaceTemplate>((event, emit) => _emit_ReplaceTemplate(event, emit));
    on<_ChangeTemplatePosition>((event, emit) => _emit_ChangeTemplatePosition(event, emit));
  }

  

  _emit_LoadTemplates(_LoadTemplates e, Emitter<TemplateState> emit) async{
     emit( TemplateState.loading());
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.getTemplates();
      
      emit( activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r)));
  }
  _emit_LoadTemplatesForReorder(_LoadTemplatesForReorder e, Emitter<TemplateState> emit) async{
     emit( TemplateState.loading());
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.getTemplates();
      
      emit( activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.templateOrderChanged(userTemplates: r)));
  }
  _emit_InsertNewTemplate(_InsertNewTemplate e, Emitter<TemplateState> emit) async{
     emit(TemplateState.loading());
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.insertTemplate(e.listParameter);
      
     emit(activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r)));
  }
  _emit_DeleteTemplatePosition(_DeleteTemplatePosition e, Emitter<TemplateState> emit) async{
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.deleteTemplatePosition(e.list, e.position);
      
      emit(activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r)));
  }
  _emit_DeleteTemplate(_DeleteTemplate e, Emitter<TemplateState> emit) async{
     emit(TemplateState.loading());
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.deleteTemplate(e.list);
      
      emit( activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r)));
  }
  _emit_ReplaceTemplate(_ReplaceTemplate e, Emitter<TemplateState> emit) async{
      emit(TemplateState.loading());
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.replaceTemplate(e.list, e.listParameter);
      
      emit( activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.loaded(userTemplates: r)));
  }
  _emit_ChangeTemplatePosition(_ChangeTemplatePosition e, Emitter<TemplateState> emit) async{
     emit(TemplateState.loading());
      Either<Failure, List<ListTemplate>> activeListsResult = await repository.changeTemplatePosition(e.template, e.oldIndex, e.newIndex);
      
      emit(activeListsResult.fold(
        (l) => TemplateState.error(failure: l), 
        (r) => TemplateState.templateOrderChanged(userTemplates: r)));
  }


}

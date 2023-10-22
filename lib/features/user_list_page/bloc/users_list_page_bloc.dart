import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:user_vista/features/user_list_page/bloc/users_list_page_events.dart';
import 'package:user_vista/features/user_list_page/bloc/users_list_page_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_vista/features/user_list_page/data/repository/users_list_repository.dart';
import 'package:user_vista/features/user_list_page/data/repository/users_list_repository_impl.dart';

@injectable
class UsersListPageBloc extends Bloc<UsersListPageEvents, UsersListPageStates>{
  final UsersListRepository _repository = UsersListRepositoryImpl();

  UsersListPageBloc() : super(UsersListPageStates.initial()) {
    on<UsersListPageEvents>(_mapUsersListPageEvents);
  }

  FutureOr<void> _mapUsersListPageEvents(UsersListPageEvents events, Emitter<UsersListPageStates> emit) async {
    emit(UsersListPageStates.loading());
    var response = await _repository.getUsersList(page: events.page);
    if(response!=null){
      emit(UsersListPageStates.success(usersListModel: response));
    } else {
      emit(UsersListPageStates.error());
    }
  }
}
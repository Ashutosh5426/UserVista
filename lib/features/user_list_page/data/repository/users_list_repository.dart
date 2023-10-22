import 'package:user_vista/features/user_list_page/data/model/users_list_model.dart';

abstract class UsersListRepository{
  Future<UsersListModel?> getUsersList({required int page});
}
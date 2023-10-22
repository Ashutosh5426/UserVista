import 'package:injectable/injectable.dart';
import 'package:user_vista/core/api_calls.dart';
import 'package:user_vista/features/user_list_page/data/mapper/users_list_mapper.dart';
import 'package:user_vista/features/user_list_page/data/model/users_list_model.dart';
import 'package:user_vista/features/user_list_page/data/model/users_list_response_model.dart';
import 'package:user_vista/features/user_list_page/data/repository/users_list_repository.dart';

@Injectable(as: UsersListRepository)
class UsersListRepositoryImpl extends UsersListRepository{
  @override
  Future<UsersListModel?> getUsersList({required int page}) async {
    try{
      var response = await ApiCalls().getUsers(page: page);
      if(response.statusCode==200){
        return UsersListMapper().call(UsersListResponseModel.fromJson(response.data));
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }
}
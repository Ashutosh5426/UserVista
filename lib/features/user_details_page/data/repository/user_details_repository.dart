import 'package:user_vista/features/user_details_page/data/model/user_details_model.dart';

abstract class UserDetailsRepository {
  Future<UserDetailsModel?> getUserDetails({required String userId});
}
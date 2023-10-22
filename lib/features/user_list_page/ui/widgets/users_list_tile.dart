import 'package:flutter/material.dart';
import 'package:user_vista/features/user_list_page/data/model/users_list_model.dart';

class UsersListTile extends StatelessWidget {
  final UserModel userModel;
  const UsersListTile({required this.userModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // border: Border.all(
        //   // color: FlutterFlowTheme.of(context).secondaryText.withOpacity(0.1),
        // ),
          boxShadow:[BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
          )]
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              userModel.avatar,
              width: 48,
              height: 48,
              errorBuilder: (context, _, __){
                return Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                );
              },
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(
                 '${userModel.firstName} ${userModel.lastName}',
                 style: const TextStyle(
                   fontWeight: FontWeight.w600,
                 ),
               ),
               Text(userModel.email)
              ],
            ),
          ),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.8), width: 0.5),
              shape: BoxShape.circle,
            ),
            child: Center(child: Text(userModel.id.toString())),
          ),
        ],
      ),
    );
  }
}

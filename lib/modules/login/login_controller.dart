import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow2/shared/auth/auth_controller.dart';
import 'package:payflow2/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
    try {
      final response = await googleSignIn.signIn();
      final user =
          UserModel(
            name: response!.displayName!,
            photoUrl: response.photoUrl
          );
      authController.setUser(context, user);
      print(response);
    } catch (error) {
      authController.setUser(context, null);
      print(error);
    }
  }
}

import 'package:blood_org_app/app/router/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  // Validate Email
  validateEmail(value) {
    if (value == null || value.trim().isEmpty) {
      return " Required";
    }

    return null;
  }

  // Validate Password
  validatePass(value) {
    if (value == null || value.isEmpty) {
      return " Requied";
    }

    return null;
  }

  // Log In Button Click
  logInClick(context, controller) {
    if (controller.formKey.currentState!.validate()) {
      Get.offAllNamed(Routes.homePage);
    }
  }

  //Go to Sign Up Page
  goSignUp() {
    Get.toNamed(Routes.signUpPage);
  }

  //Key
  final formKey = GlobalKey<FormState>();
  RxBool passwordVisible = true.obs;
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPass = TextEditingController();

  @override
  void onClose() {
    inputEmail.dispose();
    inputPass.dispose();
    super.onClose();
  }
}

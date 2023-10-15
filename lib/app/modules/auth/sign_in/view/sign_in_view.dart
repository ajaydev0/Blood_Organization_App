import 'package:blood_org_app/utils/Ui_Content.dart';
import 'package:blood_org_app/widgets/TextField_Widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../widgets/AppSize_MediaQuery.dart';
import '../../../../../widgets/Container_Widget.dart';
import '../../../../../widgets/SizeBox_Widget.dart';
import '../../../../../widgets/Text_Widget.dart';
import '../controller/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignInController());
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Kcontainer(
                  h: Kh(context: context, value: 16),
                  w: Kw(context: context, value: 34),
                  child: Kcontainer(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image.Login_Screen_Img)),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: appcolors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20.0,
                          offset: const Offset(0, 0),
                          color: appcolors.redWithOpacity),
                    ],
                  ),
                ),
                KsBox(h: Kh(context: context, value: 5)),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: KtextField(
                    controller: controller.inputEmail,
                    validator: (value) {
                      return controller.validateEmail(value);
                    },
                    hintText: "USER ID",
                    iconColor:
                        const Color.fromARGB(255, 161, 5, 5).withOpacity(.3),
                  ),
                ),
                KsBox(h: Kh(context: context, value: 2)),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Obx(
                    () => KtextField(
                        controller: controller.inputPass,
                        obscureText: controller.passwordVisible.value,
                        validator: (value) {
                          return controller.validatePass(value);
                        },
                        suffixIcon: IconButton(
                          icon: Icon(controller.passwordVisible.value
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            controller.passwordVisible.value =
                                !controller.passwordVisible.value;
                          },
                        ),
                        suffixIconColor: Colors.red,
                        hintText: "PASSWORD"),
                  ),
                ),
                KsBox(h: Kh(context: context, value: 1)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Ktext(
                      text: "forgot password",
                      fontStyle: FontStyle.italic,
                      weight: FontWeight.bold,
                      size: 12,
                    ),
                    KsBox(w: 50),
                  ],
                ),
                KsBox(h: Kh(context: context, value: 4)),
                GestureDetector(
                  onTap: () {
                    controller.logInClick(context, controller);
                  },
                  child: Kcontainer(
                    h: 50,
                    w: 170,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20.0,
                            offset: const Offset(0, 5),
                            color: appcolors.redWithOpacity),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 1),
                        colors: [
                          Color.fromARGB(255, 228, 14, 14),
                          Color.fromARGB(255, 150, 3, 3),
                          Color.fromARGB(255, 100, 2, 2),
                        ],
                        tileMode: TileMode.mirror,
                      ),
                    ),
                    child: Center(
                        child: Ktext(
                      text: "LOGIN",
                      color: Colors.white,
                      letterSpacing: 0.5,
                    )),
                  ),
                ),
                KsBox(
                  h: Kh(context: context, value: 2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ktext(
                      text: "Don't have an account!",
                      color: Colors.black,
                      weight: FontWeight.bold,
                    ),
                    // KsBox(w: Kw(context: context, value: 1)),
                    TextButton(
                      onPressed: () {
                        controller.goSignUp();
                      },
                      child: Ktext(
                          text: "SIGNUP",
                          color: appcolors.red,
                          weight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

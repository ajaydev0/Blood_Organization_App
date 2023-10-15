import 'package:blood_org_app/utils/Ui_Content.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/AppSize_MediaQuery.dart';
import '../../../../widgets/Container_Widget.dart';
import '../../../../widgets/SizeBox_Widget.dart';
import '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Kcontainer(
              h: 130,
              w: 130,
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
            KsBox(
              h: Kh(context: context, value: 2),
            ),
            KsBox(
              h: Kh(context: context, value: 4),
              w: Kw(context: context, value: 8),
              child: FittedBox(
                  child: CupertinoActivityIndicator(
                color: appcolors.red,
              )),
            )
          ],
        ),
      ),
    );
  }
}

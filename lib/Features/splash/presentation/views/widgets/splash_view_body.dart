import 'package:book_app/Features/home/presentation/views/home_view.dart';
import 'package:book_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
         SizedBox(
           height: 4,
         ),
         SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }


  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this ,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(begin: const Offset(0, 2) , end: Offset.zero).animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=> const HomeView(),
        transition: Transition.fade ,
        duration: KTransitionDuration,);
    });
  }

}
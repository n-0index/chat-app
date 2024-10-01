import 'package:chat_app/core/constants/asset_images.dart';
import 'package:chat_app/core/themes/styles.dart';
import 'package:chat_app/features/presentation/views/widgets/navigate_to_home.dart';
import 'package:chat_app/features/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {

  late AnimationController animationController ;
  late Animation <Offset> slidingAnimation ;

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetImages.logo,
            width: 200,
            height: 200,),
          Text('Whats Up',
            style: Styles.textStyle24.copyWith(color: const Color(0xFF25D366),),
          ),

          const SizedBox(
            height: 140,
          ),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }


  void initSlidingAnimation(){
    animationController = AnimationController(
        vsync: this ,
        duration: const Duration(seconds: 1)
    );

    slidingAnimation =
        Tween< Offset>(begin: const Offset(0,4) , end: Offset.zero ).animate(animationController) ;

    animationController.forward();
  }
}



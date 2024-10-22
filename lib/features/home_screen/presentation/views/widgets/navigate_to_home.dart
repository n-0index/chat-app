import 'package:chat_app/features/home_screen/presentation/views/home_view.dart';
import 'package:get/get.dart';

void navigateToHome(){
  Future.delayed(const Duration(seconds: 3) , () {
    Get.to( () => const HomeView() ,
        transition: Transition.fade ,duration: const Duration(seconds: 3) ) ;
  }
  );
}

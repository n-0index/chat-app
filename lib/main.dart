import 'package:chat_app/core/themes/colors.dart';
import 'package:chat_app/features/presentation/splash_screen/splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: ColorApp.kBackgroundColor ,
          textTheme: GoogleFonts.interTextTheme(),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),

        home: const SplashView(),

    );
  }
}

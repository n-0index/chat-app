import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_widgets/login_button.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_widgets/login_title.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/login_widgets/register_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/home_screen/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

bool isPasswordVisible = false;
var formKey = GlobalKey<FormState>();

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: formKey ,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              const LoginTitle(),
              const SizedBox(height: 20,),

              EmailField(
                  emailController: emailController
              ),
              const SizedBox(height: 20,),

              PasswordField(passwordController: passwordController,
                  toggleVisibility: (){
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
                  },
                  isPasswordVisible: isPasswordVisible),
              const SizedBox(height: 20),
              LoginButton(
                  emailController: emailController,
                  passwordController: passwordController,
                  onSuccess: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const HomeView()));
                  }),
              const SizedBox(height: 20),
              const RegisterRow(),
            ],
          ),
        ),
      ),
    );
  }
}

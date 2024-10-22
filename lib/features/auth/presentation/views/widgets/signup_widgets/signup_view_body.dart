import 'package:chat_app/features/auth/presentation/views/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_widgets/login_row.dart';
import 'package:chat_app/features/auth/presentation/views/widgets/signup_widgets/signup_button.dart';
import 'package:flutter/material.dart';
import '../../../../../home_screen/presentation/views/home_view.dart';
import '../name_field.dart';
import 'signup_title.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();

bool isPasswordVisible = false;
bool? currentValue;

var formKey = GlobalKey<FormState>();

class _SignupViewBodyState extends State<SignupViewBody> {

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey ,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              const SignupTitle(),
              const SizedBox(height: 15,),

              NameField(
                nameController: nameController,
              ),
              const SizedBox(height: 15,),

              EmailField(
                  emailController: emailController),
              const SizedBox(height: 15,),

              PhoneNumberField(
                  phoneController: phoneController),
              const SizedBox(height: 15,),

              PasswordField(
                passwordController: passwordController,
                toggleVisibility: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                isPasswordVisible: isPasswordVisible,),
              const SizedBox(height: 15,),

              SignupButton(
                  emailController: emailController,
                  passwordController: passwordController,
                  nameController: nameController,
                  phoneController: phoneController,
                  onSuccess:(){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
       }),
              const SizedBox(height: 15,),
              const LoginRow(),
            ],
          ),
        ),
      ),
    );
  }
}


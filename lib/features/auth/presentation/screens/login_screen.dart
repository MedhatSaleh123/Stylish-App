import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/features/auth/presentation/widgets/aready_have_acount.dart';
import 'package:stylish_app/features/auth/presentation/widgets/divider_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/header_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/social_buttons.dart';

import '../../../../core/widgets/custom_button.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),

              HeaderSection(text: "Welcome\nBack!"),

              LoginForm(),

              CustomButton(text: "Login", onPressed: () {}),

              SizedBox(height: 60),

              DividerSection(),

              SizedBox(height: 25),

              SocialButtons(),

              SizedBox(height: 40),

              AreadyHaveAccount(
                text1: "Create An Account ",
                text2: "Sign Up",
                onTap: () {
                  Navigator.of(context).pushNamed(AppName.signUp);
                },
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

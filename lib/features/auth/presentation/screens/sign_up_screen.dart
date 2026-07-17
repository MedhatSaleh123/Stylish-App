import 'package:flutter/material.dart';
import 'package:stylish_app/features/auth/presentation/widgets/aready_have_acount.dart';
import 'package:stylish_app/features/auth/presentation/widgets/divider_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/header_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:stylish_app/features/auth/presentation/widgets/social_buttons.dart';

import '../../../../core/widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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

              HeaderSection(text: "Create an \naccount"),

              SignUpForm(),

              CustomButton(text: "Create Account", onPressed: () {}),

              SizedBox(height: 50),

              DividerSection(),

              SizedBox(height: 25),

              SocialButtons(),

              SizedBox(height: 40),

              AreadyHaveAccount(
                text1: "I Already Have an Account ",
                text2: "Login",
                onTap: () {
                  Navigator.of(context).pop();
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

import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_text_field.dart';
import 'package:stylish_app/features/auth/presentation/widgets/forgot_password.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool obscureText = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        CustomTextField(
          hintText: "Username or Email",
          controller: emailController,
          prefixIcon: Icons.person,
          keyboardType: TextInputType.emailAddress,

          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your email";
            }

            return null;
          },
        ),

        SizedBox(height: 30),
        CustomTextField(
          controller: passwordController,
          hintText: "Password",
          prefixIcon: Icons.lock_outline,
          obscureText: obscureText,

          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your password";
            }

            if (value.length < 6) {
              return "Password must be at least 6 characters";
            }

            return null;
          },
        ),
        SizedBox(height: 20),

        Align(alignment: Alignment.centerRight, child: ForgotPassword()),
        SizedBox(height: 50),
      ],
    );
  }
}

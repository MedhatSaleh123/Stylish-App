import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_text_field.dart';
import 'package:stylish_app/features/auth/presentation/widgets/forgot_password.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });
  final TextEditingController emailController;
  final GlobalKey formKey;
  final TextEditingController passwordController;
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomTextField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your E-Mail';
              } else if (!EmailValidator.validate(value)) {
                return 'Please enter a valid E-Mail';
              }
              return null;
            },
            hintText: "Username or Email",
            controller: widget.emailController,
            prefixIcon: Icons.person,
            keyboardType: TextInputType.emailAddress,
          ),

          SizedBox(height: 30),
          CustomTextField(
            controller: widget.passwordController,
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
              if (value!.isEmpty) {
                return 'Please enter your password';
              } else if (value.length < 5) {
                return 'The password must contains more than five characters.';
              }
              return null;
            },
          ),
          SizedBox(height: 20),

          Align(alignment: Alignment.centerRight, child: ForgotPassword()),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

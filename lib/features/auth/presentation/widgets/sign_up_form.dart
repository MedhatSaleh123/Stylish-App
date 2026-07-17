import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SignUpForm> {
  TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool obscureText = true;
  bool obscureConfirmPassword = true;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          prefixIcon: Icons.lock,

          obscureText: obscureText,

          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(
              obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
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
        SizedBox(height: 30),

        CustomTextField(
          controller: confirmPasswordController,
          hintText: "Confirm Password",
          prefixIcon: Icons.lock,
          obscureText: obscureConfirmPassword,

          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureConfirmPassword = !obscureConfirmPassword;
              });
            },
            icon: Icon(
              obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
            ),
          ),

          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please confirm your password";
            }

            if (value != passwordController.text) {
              return "Passwords do not match";
            }

            return null;
          },
        ),
        SizedBox(height: 20),

        RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 14, color: Color(0xff676767)),
            children: [
              const TextSpan(text: "By clicking the "),
              TextSpan(
                text: "Register",
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(
                text:
                    " button, you agree\n"
                    "to the public offer",
              ),
            ],
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}

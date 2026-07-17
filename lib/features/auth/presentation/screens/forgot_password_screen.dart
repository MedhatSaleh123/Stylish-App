import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_text_field.dart';
import 'package:stylish_app/features/auth/presentation/widgets/header_section.dart';
import '../../../../core/widgets/custom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              HeaderSection(text: "Forgot \nPassword?"),
              SizedBox(height: 30),
              CustomTextField(
                controller: emailController,
                hintText: "Enter your email address",
                prefixIcon: Icons.email,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }

                  if (!RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  ).hasMatch(value)) {
                    return "Please enter a valid email";
                  }

                  return null;
                },
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "*",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Expanded(
                    child: Text(
                      "We will send you a message to set or reset\nyour new password",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF9E9E9E),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              CustomButton(text: "Submit", onPressed: () {}),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

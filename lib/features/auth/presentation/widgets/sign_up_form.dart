import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.formKey,
  });
  final TextEditingController emailController;

  final TextEditingController usernameController;

  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final GlobalKey formKey;
  @override
  State<SignUpForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<SignUpForm> {
  bool obscureText = true;
  bool obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          CustomTextField(
            hintText: "Username",
            controller: widget.usernameController,
            prefixIcon: Icons.person,
            keyboardType: TextInputType.text,

            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your username';
              } else if (false) {
                return 'This username is taken';
              }
              return null;
            },
          ),
          SizedBox(height: 30),
          CustomTextField(
            hintText: "Email",
            controller: widget.emailController,
            prefixIcon: Icons.email,
            keyboardType: TextInputType.emailAddress,

            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your E-Mail';
              } else if (!EmailValidator.validate(value)) {
                return 'Please enter a valid E-Mail';
              }
              return null;
            },
          ),

          SizedBox(height: 30),
          CustomTextField(
            controller: widget.passwordController,
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
              if (value!.isEmpty) {
                return 'Please enter your password';
              } else if (value.length < 5) {
                return 'The password must contains more than five characters.';
              }
              return null;
            },
          ),
          SizedBox(height: 30),

          CustomTextField(
            controller: widget.confirmPasswordController,
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
              if (value!.isEmpty) {
                return 'Please enter your password confirmation';
              } else if (value != widget.passwordController.text) {
                return "Password doesn't match.";
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
      ),
    );
  }
}

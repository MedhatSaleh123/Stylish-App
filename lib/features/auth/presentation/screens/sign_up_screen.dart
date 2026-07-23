import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/features/auth/domain/entities/sign_up_entity.dart';
import 'package:stylish_app/features/auth/presentation/bloc/authentication/auth_bloc.dart';
import 'package:stylish_app/features/auth/presentation/screens/verify_email.dart';
import 'package:stylish_app/features/auth/presentation/widgets/aready_have_acount.dart';
import 'package:stylish_app/features/auth/presentation/widgets/divider_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/header_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:stylish_app/features/auth/presentation/widgets/social_buttons.dart';
import 'package:stylish_app/features/home/presentation/screens/home_screen.dart';

import '../../../../core/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

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

              SignUpForm(
                formKey: formKey,
                emailController: emailController,
                usernameController: usernameController,
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (_, state) {
                  if (state is SignedUpState) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const VerifyEmail(),
                      ),
                    );
                    BlocProvider.of<AuthBloc>(
                      context,
                    ).add(SendEmailVerificationEvent());
                  } else if (state is GoogleSignInState) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is ErrorAuthState) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Text(
                              state.message,
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                        ),
                        CustomButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              BlocProvider.of<AuthBloc>(context).add(
                                SignUpEvent(
                                  signUpEntity: SignUpEntity(
                                    email: emailController.text,
                                    password: passwordController.text,
                                    repeatedPassword:
                                        confirmPasswordController.text,
                                    name: usernameController.text,
                                  ),
                                ),
                              );
                            }
                          },
                          text: 'Create Account',
                        ),
                      ],
                    );
                  }
                  return CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(
                          SignUpEvent(
                            signUpEntity: SignUpEntity(
                              email: emailController.text,
                              password: passwordController.text,
                              repeatedPassword: confirmPasswordController.text,
                              name: usernameController.text,
                            ),
                          ),
                        );
                      }
                    },
                    text: 'Create Account',
                  );
                },
              ),

              SizedBox(height: 50),

              DividerSection(),

              SizedBox(height: 25),

              SocialButtons(
                onTapGoogle: () {
                  BlocProvider.of<AuthBloc>(
                    context,
                  ).add(SignInWithGoogleEvent());
                },
                onTapApple: () {},
                onTapFace: () {},
              ),

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

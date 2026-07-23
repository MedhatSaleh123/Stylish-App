import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/features/auth/domain/entities/sign_in_entity.dart';
import 'package:stylish_app/features/auth/presentation/bloc/authentication/auth_bloc.dart';
import 'package:stylish_app/features/auth/presentation/screens/verify_email.dart';
import 'package:stylish_app/features/auth/presentation/widgets/aready_have_acount.dart';
import 'package:stylish_app/features/auth/presentation/widgets/divider_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/header_section.dart';
import 'package:stylish_app/features/auth/presentation/widgets/social_buttons.dart';
import 'package:stylish_app/features/home/presentation/screens/home_screen.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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

              HeaderSection(text: "Welcome\nBack!"),

              LoginForm(
                emailController: emailController,
                passwordController: passwordController,
                formKey: formKey,
              ),
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is SignedInState) {
                    BlocProvider.of<AuthBloc>(
                      context,
                    ).add(CheckLoggingInEvent());
                  } else if (state is SignedInPageState ||
                      state is GoogleSignInState) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  } else if (state is VerifyEmailPageState) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const VerifyEmail(),
                      ),
                    );
                    BlocProvider.of<AuthBloc>(
                      context,
                    ).add(SendEmailVerificationEvent());
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
                                SignInEvent(
                                  signInEntity: SignInEntity(
                                    password: passwordController.text,
                                    email: emailController.text,
                                  ),
                                ),
                              );
                            }
                          },

                          text: 'Login',
                        ),
                      ],
                    );
                  }
                  return CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<AuthBloc>(context).add(
                          SignInEvent(
                            signInEntity: SignInEntity(
                              password: passwordController.text,
                              email: emailController.text,
                            ),
                          ),
                        );
                      }
                    },

                    text: "Login",
                  );
                },
              ),

              SizedBox(height: 60),

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

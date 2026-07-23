import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/features/auth/presentation/bloc/authentication/auth_bloc.dart';
import 'package:stylish_app/features/auth/presentation/screens/login_screen.dart';
import 'package:stylish_app/features/profile/presenation/widgets/change_password_button.dart';
import 'package:stylish_app/features/profile/presenation/widgets/custom_profile_text_field.dart';
import 'package:stylish_app/features/profile/presenation/widgets/profile_avatar.dart';
import 'package:stylish_app/features/profile/presenation/widgets/section_title.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final emailController = TextEditingController(text: "aashifa@gmail.com");
  final cityController = TextEditingController(text: "London");

  final countryController = TextEditingController(text: "United Kingdom");

  final bankAccountController = TextEditingController(text: "204356XXXXXX");

  final accountHolderController = TextEditingController(
    text: "Abhiraj Sisodiya",
  );

  final ifscController = TextEditingController(text: "SBIN00428");
  final passwordController = TextEditingController(text: "************");

  final pinCodeController = TextEditingController(text: "450116");

  final addressController = TextEditingController(text: "216 St Paul's Rd,");
  final List<String> states = ["N1 2LL", "N2 3AB", "N3 5CD"];

  String stateValue = "N1 2LL";
  @override
  void dispose() {
    cityController.dispose();
    countryController.dispose();
    accountHolderController.dispose();
    bankAccountController.dispose();
    ifscController.dispose();
    emailController.dispose();
    passwordController.dispose();
    pinCodeController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// AppBar
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),

              const Expanded(
                child: Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is LoggedOutState) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  }
                },
                child: TextButton(
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(LogOutEvent());
                  },
                  child: Text("Log out"),
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          const Center(child: ProfileAvatar()),

          const SizedBox(height: 28),

          const SectionTitle(title: "Personal Details"),

          const SizedBox(height: 18),

          CustomProfileTextField(
            label: "Email Address",
            controller: emailController,
          ),

          const SizedBox(height: 20),

          CustomProfileTextField(
            label: "Password",
            controller: passwordController,
          ),

          const SizedBox(height: 8),

          const Align(
            alignment: Alignment.centerRight,
            child: ChangePasswordButton(),
          ),

          const SizedBox(height: 22),

          Divider(color: Colors.grey.shade300),

          const SizedBox(height: 24),

          const SectionTitle(title: "Business Address Details"),

          const SizedBox(height: 18),

          CustomProfileTextField(
            label: "Pincode",
            controller: pinCodeController,
          ),

          const SizedBox(height: 20),

          CustomProfileTextField(
            label: "Address",
            controller: addressController,
          ),
          const SizedBox(height: 20),

          CustomProfileTextField(label: "City", controller: cityController),

          const SizedBox(height: 20),

          DropdownButtonFormField<String>(
            initialValue: stateValue,
            decoration: InputDecoration(
              labelText: "State",
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            items: states
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {
              setState(() {
                stateValue = value!;
              });
            },
          ),

          const SizedBox(height: 20),

          CustomProfileTextField(
            label: "Country",
            controller: countryController,
          ),

          const SizedBox(height: 26),

          Divider(color: Colors.grey.shade300),

          const SizedBox(height: 26),

          const SectionTitle(title: "Bank Account Details"),

          const SizedBox(height: 20),

          CustomProfileTextField(
            label: "Bank Account Number",
            controller: bankAccountController,
          ),

          const SizedBox(height: 20),

          CustomProfileTextField(
            label: "Account Holder's Name",
            controller: accountHolderController,
          ),

          const SizedBox(height: 20),

          CustomProfileTextField(
            label: "IFSC Code",
            controller: ifscController,
          ),

          const SizedBox(height: 30),

          CustomButton(onPressed: () {}, text: "Save"),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/core/constants/app_colors.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';
import 'package:stylish_app/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:stylish_app/features/payment/presentation/widgets/payment_success_dialog.dart';
import '../widgets/continue_button.dart';
import '../widgets/payment_methods_list.dart';
import '../widgets/payment_summary.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PaymentCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Checkout",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PaymentSummary(),

                  const SizedBox(height: 22),

                  const Text(
                    "Payment",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),

                  const SizedBox(height: 18),

                  const PaymentMethodsList(),
                  const SizedBox(height: 60),
                  CustomButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (_) => const PaymentSuccessDialog(),
                      );
                    },
                    text: "Continue",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

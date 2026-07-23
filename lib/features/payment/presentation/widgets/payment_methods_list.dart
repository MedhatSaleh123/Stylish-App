import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_app/features/payment/presentation/cubits/payment_cubit.dart';
import 'package:stylish_app/features/payment/presentation/cubits/payment_state.dart';
import 'payment_method_card.dart';

class PaymentMethodsList extends StatelessWidget {
  const PaymentMethodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (_, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.methods.length,
          itemBuilder: (_, index) {
            return PaymentMethodCard(
              method: state.methods[index],
              onTap: () {
                context.read<PaymentCubit>().selectMethod(index);
              },
            );
          },
        );
      },
    );
  }
}

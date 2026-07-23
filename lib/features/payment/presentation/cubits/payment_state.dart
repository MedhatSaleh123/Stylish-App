import '../../domain/entities/payment_method_entity.dart';
import '../../domain/entities/payment_summary_entity.dart';

class PaymentState {
  final PaymentSummaryEntity summary;
  final List<PaymentMethodEntity> methods;

  const PaymentState({required this.summary, required this.methods});

  PaymentState copyWith({
    PaymentSummaryEntity? summary,
    List<PaymentMethodEntity>? methods,
  }) {
    return PaymentState(
      summary: summary ?? this.summary,
      methods: methods ?? this.methods,
    );
  }
}

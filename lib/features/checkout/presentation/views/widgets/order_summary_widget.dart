import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/payment_item.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaymentItem(
      title: 'ملخص الطلب',
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'المجموع الفرعي:',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              const Text(
                '150 دينار',
                textAlign: TextAlign.right,
                style: TextStyles.semiBold16,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                ' التوصيل:',
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '150 دينار',
                textAlign: TextAlign.right,
                style: TextStyles.regular13.copyWith(
                  color: const Color(0xFF4E5556),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          const Divider(
            thickness: .5,
            color: Color(0xFFCACECE),
          ),
          const SizedBox(
            height: 9,
          ),
          const Row(
            children: [
              Text(
                'الكلي :',
                style: TextStyles.bold16,
              ),
              Spacer(),
              Text(
                '150 دينار',
                textAlign: TextAlign.right,
                style: TextStyles.bold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

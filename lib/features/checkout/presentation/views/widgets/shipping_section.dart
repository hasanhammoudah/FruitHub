import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/domain/entities/order_entity.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/shipping_item.dart';
import 'package:provider/provider.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context); // تأكد من استدعائه!
    var orderEntity = context.watch<OrderEntity>();
    return Column(
      key: const PageStorageKey('shipping_section'), // إضافة مفتاح للتخزين
      children: [
        ShippingItem(
          title: 'الدفع عند الاستلام',
          subTitle: 'التسليم من المكان',
          price: (orderEntity.cartEntity.calculateTotalPrice() + 40).toString(),
          isSelected: selectedIndex == 0,
          onTap: () {
            selectedIndex = 0;
            setState(() {});
            orderEntity.payWithCash = true;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        ShippingItem(
          title: ' الدفع اونلاين  ',
          subTitle: 'يرجى تحديد طريقة الدفع',
          price: orderEntity.cartEntity.calculateTotalPrice().toString(),
          isSelected: selectedIndex == 1,
          onTap: () {
            selectedIndex = 1;
            setState(() {});
            orderEntity.payWithCash = false;
          },
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

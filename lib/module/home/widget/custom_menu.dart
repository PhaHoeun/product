import 'package:flutter/material.dart';
import 'package:product/module/home/model/item_menu_model.dart';

class CustomMenuItem extends StatelessWidget {
  const CustomMenuItem({super.key, this.itemMenuModel});
  final ItemMenuModel? itemMenuModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            shape: BoxShape.circle,
          ),
          child: Image.asset(itemMenuModel!.image ?? ''),
          // child: Image.asset('assets/icons/sneakers.png'),
        ),
        const SizedBox(height: 10),
        Text(
          itemMenuModel!.title ?? '',
          style: const TextStyle(
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

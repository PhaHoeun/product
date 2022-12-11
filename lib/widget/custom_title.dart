import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    this.title,
    this.seeAll,
    this.isSeaAll = false,
    this.onPressed,
  });
  final String? title;
  final String? seeAll;
  final bool? isSeaAll;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? 'Title null',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        isSeaAll!
            ? TextButton(
                onPressed: onPressed,
                child: Text(
                  seeAll ?? 'See All',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : const Text(''),
      ],
    );
  }
}

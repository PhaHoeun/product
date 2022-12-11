import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.grey.shade300.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: const TextStyle(decoration: TextDecoration.none),
        decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.cyan,
          ),
          suffixIcon: Icon(
            Icons.filter_list,
            color: Colors.cyan,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 15, top: 15, right: 15),
          hintText: "Search",
        ),
      ),
    );
  }
}

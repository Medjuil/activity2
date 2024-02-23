import 'package:flutter/material.dart';

class TodoBtn extends StatelessWidget {
  const TodoBtn({super.key, required this.onTap});

  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(5)),
        child: const Center(
          child: Text(
            'Show todo\'s',
          ),
        ),
      ),
    );
  }
}

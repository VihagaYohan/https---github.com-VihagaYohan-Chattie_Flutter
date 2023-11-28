import 'package:flutter/material.dart';

class UIButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const UIButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Text(title,
                  style: const TextStyle(color: Colors.white, fontSize: 16))),
        ));
  }
}

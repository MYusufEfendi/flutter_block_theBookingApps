import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';

class SquareCheckbox extends StatelessWidget {
  const SquareCheckbox({Key? key, required this.onTap, this.status = false})
      : super(key: key);

  final VoidCallback onTap;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      value: status,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      onChanged: (bool? value) {
        onTap();
      },
    );
  }
}

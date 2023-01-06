import 'package:flutter/material.dart';
import 'package:flutter_bloc_thebooking_apps/data/src/img_string.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImgString.cittaPlants2);
  }
}

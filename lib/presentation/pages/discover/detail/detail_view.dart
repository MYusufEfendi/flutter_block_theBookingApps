import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/detail/component/bottom_button.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/detail/component/description.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/detail/component/img_banner.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/favorite/component/favorite_list.dart';

import 'detail_cubit.dart';
import 'detail_state.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DetailCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DetailCubit>(context);

    return Scaffold(
        backgroundColor: AppColor.ink05,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: const [
                  ImgBanner(),
                  Description(),
                ],
              ),
            ),
            const BottomButton()
          ],
        ));
  }
}

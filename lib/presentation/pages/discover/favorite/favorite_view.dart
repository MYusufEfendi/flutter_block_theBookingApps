import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/theme/theme.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/favorite/component/favorite_header.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/favorite/component/favorite_list.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/favorite/component/favorite_title.dart';

import 'favorite_cubit.dart';
import 'favorite_state.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FavoriteCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<FavoriteCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: [
          const FavoriteTitle(),
          const FavoriteHeader(),
          const FavoriteList(),
        ],
      ),
    );
  }
}

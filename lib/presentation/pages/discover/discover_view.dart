import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/component/bottom_menu.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/favorite/favorite_view.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/settings/settings_view.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/trips/trips_view.dart';

import 'discover_cubit.dart';
import 'discover_state.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<DiscoverCubit, DiscoverState>(
                builder: (context, state) {
              return state.selectedIndex == 0
                  ? const TripsPage()
                  : state.selectedIndex == 1
                      ? const FavoritePage()
                      : const SettingsPage();
            }),
          ),
          const BottomMenu()
        ],
      ),
    );
  }
}

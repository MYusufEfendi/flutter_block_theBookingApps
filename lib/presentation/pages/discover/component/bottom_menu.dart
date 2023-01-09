import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/config/config.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/discover_cubit.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/discover_state.dart';
import 'package:flutter_bloc_thebooking_apps/util/util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);

    return Container(
      height: 69.6.h,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),
      child: BlocBuilder<DiscoverCubit, DiscoverState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildItem(
                icon: Icons.location_on_sharp,
                title: "Trips",
                isSelected: cubit.state.selectedIndex == 0,
                onTap: () => cubit.chengIndext(0),
              ),
              _buildItem(
                icon: Icons.favorite,
                title: "Favorite",
                onTap: () => cubit.chengIndext(1),
                isSelected: cubit.state.selectedIndex == 1,
              ),
              _buildItem(
                icon: Icons.settings,
                title: "Settings",
                isSelected: cubit.state.selectedIndex == 2,
                onTap: () => cubit.chengIndext(2),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildItem({
    required GestureTapCallback? onTap,
    required IconData icon,
    required String title,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey,
          ),
          4.0.height,
          Text(title,
              style: TextStyle(
                  color: isSelected ? Colors.black : Colors.grey,
                  fontSize: 12.0.sp))
        ],
      ),
    );
  }
}

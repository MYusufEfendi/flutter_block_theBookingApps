import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/trips/component/trips_other_matches.dart';
import 'package:flutter_bloc_thebooking_apps/presentation/pages/discover/trips/component/trips_your_roomies.dart';

import 'trips_cubit.dart';
import 'trips_state.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TripsCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<TripsCubit>(context);

    return Column(
      children: const [
        TripsYourRoomies(),
        TripsOtherMatches(),
      ],
    );
  }
}

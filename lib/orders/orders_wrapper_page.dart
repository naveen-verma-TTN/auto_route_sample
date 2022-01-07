import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/cubit/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Created by Naveen Verma on 07-01-2022
/// To The New
/// naveen.verma@tothenew.com

class OrdersWrapperPage extends StatelessWidget {
  const OrdersWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCubit(),
      child: const AutoRouter(), // The AutoRouter() widget used here
      // is required to render sub-routes
    );
  }
}

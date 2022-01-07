import 'package:auto_route/auto_route.dart';
import 'package:auto_route_sample/cubit/order_cubit.dart';
import 'package:auto_route_sample/routes/router_with_nested_routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

/// Created by Naveen Verma on 07-01-2022
/// To The New
/// naveen.verma@tothenew.com

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Order details',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              padding: const EdgeInsets.all(8.0),
            ),
            onPressed: () {
              context.read<OrderCubit>().updateCount();
              context.router.push(const OrderHistoryRoute());
            },
            child: const Text(
              'Order History',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/orders_controller.dart';

class OrdersView extends ConsumerWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    OrdersController controller = ref.watch(ordersController);
    controller.view = this;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Orders'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }
}
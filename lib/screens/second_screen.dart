  
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:clima/providers/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App (${context.watch<Counter>().count})'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<Counter>().count}'),
            // Text('${context.watch<ShoppingCart>().cart}')
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   key: Key('addItem_floatingActionButton'),
      //   onPressed: () => context.read<ShoppingCart>().addItem('Bread'),
      //   tooltip: 'Add Item',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
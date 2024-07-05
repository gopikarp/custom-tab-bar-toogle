import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '2nd app bar',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Add your onPressed logic here
          },
        ),
      ),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          color: Colors.green,
          child: const Center(child: Text('Buy Page')),
        ),
      ),
    );
  }
}

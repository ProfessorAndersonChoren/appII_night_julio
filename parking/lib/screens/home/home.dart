import 'package:flutter/material.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('ParkControl'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Registrar uma novo ticket',
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/parking.png',
                  width: 48,
                ),
                const Column(
                  children: [
                    Text('16'),
                    Text('Vagas livres'),
                  ],
                ),
                Image.asset(
                  'assets/images/parking.png',
                  width: 48,
                ),
                const Column(
                  children: [
                    Text('4'),
                    Text('Vagas'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

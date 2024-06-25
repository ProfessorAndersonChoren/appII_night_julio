import 'package:flutter/material.dart';
import 'package:parking/model/ticket.dart';
import 'package:parking/model/vacancy.dart';
import 'package:parking/model/vehicle.dart';
import 'package:parking/model/vehicle_type.dart';
import 'package:parking/screens/home/components/ticket_card.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var vacancy = Vacancy(
      number: 1,
      description: 'Vaga 0001',
      vehicleType: VehicleType.motorcycle,
    );
    var moto = Vehicle(
      licensePlate: 'IUK-4645',
      brand: 'Honda',
      model: 'YBR-125 Titan',
      vehicleType: VehicleType.motorcycle,
    );

    var ticket = Ticket(
      number: 124,
      vacancy: vacancy,
      vehicle: moto,
      entryTime: TimeOfDay.now(),
    );

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '16',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      'Vagas livres',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/parking.png',
                  width: 48,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '4',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      'Vagas ocupadas',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => TicketCard(
                  index: index,
                  ticket: ticket,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:parking/model/ticket.dart';

class TicketCard extends StatelessWidget {
  final Ticket ticket;
  final int index;
  const TicketCard({
    super.key,
    required this.ticket,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Badge(
                label: Text(index.toString()),
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/motorcycle.png',
                  width: 64,
                ),
              ),
              Image.asset(
                'assets/images/parking.png',
                width: 48,
              ),
              Text(
                ticket.vacancy.toString(),
              ),
              Image.asset(
                'assets/images/plate.png',
                width: 48,
              ),
              Text(ticket.vehicle.licensePlate),
            ],
          ),
        ),
      ),
    );
  }
}

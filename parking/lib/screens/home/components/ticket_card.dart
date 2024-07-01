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
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Badge(
                label: Text(index.toString()),
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/motorcycle.png',
                  width: 64,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/parking.png',
                    width: 48,
                  ),
                  Text(
                    ticket.vacancy.toString(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/plate.png',
                    width: 48,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    ticket.vehicle.licensePlate,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class NewTicket extends StatefulWidget {
  const NewTicket({super.key});

  @override
  State<NewTicket> createState() => _NewTicketState();
}

class _NewTicketState extends State<NewTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Nova entrada'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          // TODO Criar a chave do form
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Placa do veículo'),
                  border: OutlineInputBorder(),
                ),
              ),
              // TODO Fazer os "selects"
              TextField(
                decoration: InputDecoration(
                  label: const Text('Horário de entrada'),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.schedule,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

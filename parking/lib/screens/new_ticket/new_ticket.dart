import 'package:flutter/material.dart';
import 'package:parking/model/vehicle_type.dart';
import 'package:parking/screens/shared/custom_appbar.dart';
import 'package:parking/screens/shared/custom_dropdown_menu.dart';

class NewTicket extends StatefulWidget {
  const NewTicket({super.key});

  @override
  State<NewTicket> createState() => _NewTicketState();
}

class _NewTicketState extends State<NewTicket> {
  final plateController = TextEditingController();
  final entryTimeController = TextEditingController();
  final typesController = TextEditingController();
  final listOfTypes = VehicleType.values.map((item) => item.label).toList();

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
                controller: plateController,
                decoration: const InputDecoration(
                  label: Text('Placa do veículo'),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              CustomDropdownMenu(
                list: listOfTypes,
                controller: typesController,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: entryTimeController,
                readOnly: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: const Text(
                    'Horário de entrada',
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.schedule,
                    ),
                    onPressed: () async {
                      entryTimeController.text = await showTimeDialog();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<String> showTimeDialog() async {
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.input,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    return _formatTime(time!);
  }

  String _formatTime(TimeOfDay time) =>
      "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
}

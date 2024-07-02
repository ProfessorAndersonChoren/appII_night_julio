import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final List<String> list;
  final TextEditingController controller;
  const CustomDropdownMenu({
    super.key,
    required this.list,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      dropdownMenuEntries: list
          .map(
            (item) => DropdownMenuEntry(
              value: item,
              label: item,
            ),
          )
          .toList(),
    );
  }
}

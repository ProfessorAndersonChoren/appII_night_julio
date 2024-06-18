import 'package:flutter/material.dart';

AppBar customAppBar(String title) {
  return AppBar(
    title: Text(title),
    actions: [
      Tooltip(
        message: 'Vagas',
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.local_parking),
        ),
      ),
      Tooltip(
        message: 'Faturamento diário',
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.attach_money),
        ),
      ),
      PopupMenuButton(
        itemBuilder: (context) => [
          const PopupMenuItem(
            child: Text('Meu perfil'),
          ),
          const PopupMenuItem(
            child: Text('Configurações'),
          ),
        ],
      ),
    ],
  );
}

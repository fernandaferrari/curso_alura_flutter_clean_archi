import 'package:flutter/material.dart';
import 'package:hyrule/controllers/dao_controller.dart';
import 'package:hyrule/domain/models/entry_model.dart';

class Details extends StatelessWidget {
  Details({super.key, required this.entry});
  final EntryModel entry;

  final DaoController daoController = DaoController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Detalhes"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => daoController.saveEntry(entry: entry)),
        body: Column(
          children: [
            Text(entry.name),
            Wrap(
              children: entry
                  .commonLocationsConverter()
                  .map((e) => Chip(label: Text(e)))
                  .toList(),
            ),
            Image.network(entry.image),
            Text(entry.description)
          ],
        ),
      ),
    );
  }
}

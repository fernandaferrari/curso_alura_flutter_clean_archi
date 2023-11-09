import 'package:flutter/material.dart';
import 'package:hyrule/controllers/dao_controller.dart';
import 'package:hyrule/domain/models/entry_model.dart';
import 'package:hyrule/screens/datails.dart';

class EntryCard extends StatelessWidget {
  EntryCard({super.key, required this.entry, required this.isSaved});
  final EntryModel entry;
  final bool isSaved;

  final DaoController daoController = DaoController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Dismissible(
        key: ValueKey<int>(entry.id),
        direction:
            isSaved ? DismissDirection.endToStart : DismissDirection.none,
        onDismissed: (direction) => daoController.deleteEntry(entry: entry),
        child: Column(
          children: [
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(entry: entry),
                  )),
              child: Ink(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(entry.image),
                    ),
                    Column(
                      children: [Text(entry.name)],
                    )
                  ],
                ),
              ),
            ),
            Wrap(
              children: entry
                  .commonLocationsConverter()
                  .map((e) => Chip(label: Text(e)))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hyrule/screens/results.dart';
import 'package:hyrule/utils/consts/categories.dart';

class CategoryComponent extends StatelessWidget {
  const CategoryComponent({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Results(category: category))),
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Ink(
              child: Center(
                child: Image.asset("${imagePath(category)}.png"),
              ),
            ),
          ),
        ),
        Text(categories[category]!)
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  TextHeading({required this.heading, Key? key}) : super(key: key);
  String heading;

  @override
  Widget build(BuildContext context) {
    // Dynamic Variables
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: theme.textTheme.titleLarge,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "View All",
            style: theme.textTheme.bodyLarge,
          ),
        )
      ],
    );
  }
}

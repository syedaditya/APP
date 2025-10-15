import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChosmarDokan extends StatelessWidget {
  const ChosmarDokan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Chosmar Dokan".text.xl4.bold.color(context.theme.primaryColor).make(),
        "Tranding Products".text.xl2.make(),
      ],
    );
  }
}

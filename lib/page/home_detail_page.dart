import 'package:chosmar_dokan/models/catelog.dart';
import 'package:chosmar_dokan/widges/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item Catalog;

  const HomeDetailPage({super.key, required this.Catalog})
      : assert(Catalog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "৳".text.bold.red800.xl2.make(),
            Catalog.price.text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "BUY".text.bold.xl2.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      // backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(Catalog.id.toString()),
              child: Image.asset(Catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 50.0,
              edge: VxEdge.TOP,
              arcType: VxArcType.CONVEY,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    Catalog.name.text.xl4
                        .color(context.primaryColor)
                        .bold
                        .make(),
                    Catalog.description.text
                        .textStyle(context.captionStyle)
                        .xl
                        .make(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ).p16(),
      ),
    );
  }
}

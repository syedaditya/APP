// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

// import 'package:chosmar_dokan/models/cart.dart';
// import 'package:chosmar_dokan/page/home_detail_page.dart';
// import 'package:chosmar_dokan/widges/themes.dart';

// import '../../models/catelog.dart';
// import '../../page/home_page.dart';
// import 'catalog_image.dart';

// class CatalogList extends StatelessWidget {
//   const CatalogList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: CatalogModel.products.length,
//       itemBuilder: (context, index) {
//         final Catalog = CatalogModel.products[index];
//         return InkWell(
//             onTap: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomeDetailPage(
//                       Catalog: Catalog,
//                     ),
//                   ),
//                 ),
//             child: CatalogItem(Catalog: Catalog));
//       },
//     );
//   }
// }

// class CatalogItem extends StatelessWidget {
//   final Item Catalog;
//   const CatalogItem({super.key, required this.Catalog})
//       : assert(Catalog != null);

//   @override
//   Widget build(BuildContext context) {
//     return VxBox(
//       child: Row(
//         children: [
//           Hero(
//             tag: Key(Catalog.id.toString()),
//             child: CatalogImage(
//               image: Catalog.image,
//             ),
//           ),
//           Expanded(
//               child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Catalog.name.text.xl.color(context.accentColor).bold.make(),
//               Catalog.description.text.textStyle(context.captionStyle).make(),
//               10.heightBox,
//               ButtonBar(
//                 alignment: MainAxisAlignment.spaceBetween,
//                 buttonPadding: EdgeInsets.zero,
//                 children: [
//                   "৳".text.bold.make(),
//                   Catalog.price.text.bold.xl.make(),
//                   _AddtoCart(catalog: Catalog)
//                 ],
//               ).pOnly(right: 8.0)
//             ],
//           ))
//         ],
//       ),
//     ).color(context.cardColor).rounded.square(160).make().py16();
//   }
// }

// class _AddtoCart extends StatefulWidget {
//   final Item catalog;
//   const _AddtoCart({
//     Key? key,
//     required this.catalog,
//   }) : super(key: key);

//   @override
//   State<_AddtoCart> createState() => _AddtoCartState();
// }

// class _AddtoCartState extends State<_AddtoCart> {
//   bool isAdded = false;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         isAdded = isAdded.toggle();
//         final _catalog = CatalogModel();
//         // final _cart = CartModel();
//         _cart.catalog = _catalog;
//         _cart.add(widget.catalog);
//         setState(() {});
//       },
//       style: ButtonStyle(
//         shape: MaterialStateProperty.all(
//           StadiumBorder(),
//         ),
//       ),
//       child: isAdded ? Icon(Icons.done) : "BUY".text.bold.make(),
//     );
//   }
// }

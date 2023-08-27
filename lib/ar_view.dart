import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:paye_ton_kawa2/models/product.dart';

class ArView extends StatefulWidget {
  final Product product;
  const ArView({Key? key, required this.product}) : super(key: key);

  @override
  State<ArView> createState() => _ObjectGesturesWidgetState(product: product);
}

class _ObjectGesturesWidgetState extends State<ArView> {
  final Product product;
  _ObjectGesturesWidgetState({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFc8b474),
          title: const Text('Réalité augmentée'),
        ),
        body: BabylonJSViewer(src: product.pathModele)
    );
  }
}

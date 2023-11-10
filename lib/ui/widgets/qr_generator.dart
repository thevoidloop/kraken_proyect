import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGenerator extends StatelessWidget {
  const QRGenerator({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: QrImageView(
        data: id,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraken_proyect/ui/widgets/qr_generator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: QRGenerator(id: '3'),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          child: Text(
            'Para iniciar una compra, por favor, escanea tu código QR en la terminal.',
            style: GoogleFonts.roboto(
              fontSize: 18,
            ),
            textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}

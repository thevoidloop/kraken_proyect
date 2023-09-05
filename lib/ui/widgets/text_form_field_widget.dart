import 'package:flutter/material.dart';

class TextFormFieldEmail extends StatelessWidget {
  final TextEditingController controller;
  final String mensaje;

  const TextFormFieldEmail({
    super.key,
    required this.controller,
    required this.mensaje,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: mensaje),
      keyboardType: TextInputType.emailAddress,
      // validator: validateEmail,
    );
  }
}

class TextFormFieldPass extends StatelessWidget {
  final TextEditingController controller;
  final String mensaje;
  final bool validator;

  const TextFormFieldPass({
    super.key,
    required this.controller,
    required this.mensaje,
    this.validator = false,
  });

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //     create: (context) => UIProvider(),
    //     child: Consumer<UIProvider>(
    //       builder: (context, ui, child) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: mensaje,
        // suffixIcon: IconButton(
        //   icon: ui.obscureText ? const Icon(Icons.visibility_sharp) : const Icon(Icons.visibility_off_sharp),
        //   onPressed: ui.toggleObscureText,
        // ),
      ),
      // obscureText: ui.obscureText,
      // validator: validator ? null : validatePassword,
    );
    // },
    // ));
  }
}

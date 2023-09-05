import 'package:flutter/material.dart';
import 'package:kraken_proyect/ui/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Image(image: AssetImage('assets/login.png'), height: 300),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormFieldEmail(
                      controller: _emailController,
                      mensaje: 'Correo Electronico',
                    ),
                    const SizedBox(height: 16),
                    TextFormFieldPass(
                      controller: _passwordController,
                      mensaje: 'Contraseña',
                    ),
                    const SizedBox(height: 16),
                    _ButtonLogin(formKey: _formKey, emailController: _emailController, passwordController: _passwordController),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonLogin extends StatelessWidget {
  const _ButtonLogin({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _emailController = emailController,
        _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          // Provider.of<DatabaseManagerProvider>(context, listen: false)
          //     .validarUsario(
          //         _emailController.text, _passwordController.text, context);
        }
      },
      child: const Text('Iniciar sesión'),
    );
  }
}

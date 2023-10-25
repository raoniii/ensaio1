import 'package:ensaio1/app/core/ui/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:ensaio1/app/core/navigation/nav.dart';
import 'package:ensaio1/app/core/ui/widgets/app_text.dart';

import 'homepage_simples.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _tNome = TextEditingController();
  final _tEmail = TextEditingController();
  final _tSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: _registerBody(),
    );
  }

  Widget _registerBody() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              AppText(
                label: 'Nome',
                hint: 'Digite seu nome',
                controller: _tNome,
                validator: _validateNome,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 10.0),
              AppText(
                label: 'Email',
                hint: 'Digite seu email',
                controller: _tEmail,
                validator: _validateEmail,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 10.0),
              AppText(
                label: 'Senha',
                hint: 'Digite sua senha',
                obscureText: true,
                controller: _tSenha,
                validator: _validateSenha,
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AppButton(
                    label: 'Registrar',
                    onPressed: _onClickRegistrar,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onClickRegistrar() {
    if (_formKey.currentState!.validate()) {
      String nome = _tNome.text;
      String email = _tEmail.text;
      String senha = _tSenha.text;

      // Aqui você pode processar os dados de registro, por exemplo, enviando para um servidor

      print("Nome: $nome, Email: $email, Senha: $senha");

      // Redirecionar para a página inicial após o registro
      push(context, HomePage());
    }
  }

  String? _validateNome(String? text) {
    if (text == null || text.isEmpty) {
      return "Digite seu nome";
    }
    return null;
  }

  String? _validateEmail(String? text) {
    if (text == null || text.isEmpty) {
      return "Digite seu email";
    }
    // Adicione validação de formato de e-mail, se necessário
    return null;
  }

  String? _validateSenha(String? text) {
    if (text == null || text.isEmpty) {
      return "Digite sua senha";
    }
    if (text.length < 6) {
      return "A senha precisa ter pelo menos 6 caracteres";
    }
    return null;
  }
}

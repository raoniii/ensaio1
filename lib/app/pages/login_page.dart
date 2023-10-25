import 'package:ensaio1/app/core/navigation/nav.dart';
import 'package:ensaio1/app/core/ui/widgets/app_button.dart';
import 'package:ensaio1/app/core/ui/widgets/app_text.dart';
import 'package:ensaio1/app/pages/homepage_simples.dart';
import 'package:ensaio1/app/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();
  final _focusSenha = FocusNode();

  @override
  void dispose() {
    _focusSenha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _loginBody(),
    );
  }

  Widget _loginBody() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              AppText(
                label: 'Login',
                hint: 'Digite seu login',
                controller: _tLogin,
                validator: _validateLogin,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                nextFocus: _focusSenha,
              ),
              SizedBox(height: 10.0),
              AppText(
                label: 'Senha',
                hint: 'Digite sua senha',
                obscureText: true,
                controller: _tSenha,
                validator: _validateSenha,
                focusNode: _focusSenha,
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AppButton(
                    label: 'Entrar',
                    onPressed: _onClickLogin,
                  ),
                  AppButton(
                    label: 'Registrar',
                    onPressed: _onClickRegistrar,
                    lightButton: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }



  void _onClickLogin() {
    if (_formKey.currentState!.validate()) {
      String login = _tLogin.text;
      String senha = _tSenha.text;

      print("Login: $login, Senha: $senha");
      push(context, HomePage());
    }
  }

  void _onClickRegistrar() {

    push(context, RegisterPage());

  }

  String? _validateLogin(String? text) {
    if (text == null || text.isEmpty) {
      return "Digite o login";
    }
    return null;
  }

  String? _validateSenha(String? text) {
    if (text == null || text.isEmpty) {
      return "Digite a senha";
    }
    if (text.length < 3) {
      return "A senha precisa ter pelo menos 3 caracteres";
    }
    return null;
  }
}

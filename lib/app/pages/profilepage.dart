import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
      ),
      body: _buildProfileBody(),
    );
  }

  Widget _buildProfileBody() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20.0), // Espaço superior

          _buildProfileInfo('Nome', 'Raoni F'),
          _buildProfileInfo('Email', 'rao@email.com'),
          _buildProfileInfo('Descrição', 'Desenvolvedor de apps.'),

          SizedBox(height: 30.0), // Espaço entre informações e botão

          Center(
            child: ElevatedButton(
              onPressed: () {
                // Adicione aqui a navegação para a página de edição de perfil.
              },
              child: Text('Editar Perfil'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10.0), // Espaço entre informações
      ],
    );
  }
}
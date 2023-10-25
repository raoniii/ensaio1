import 'package:ensaio1/app/core/ui/widgets/drawer_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo ao App'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      drawer: DrawerList(),
    );
  }
}

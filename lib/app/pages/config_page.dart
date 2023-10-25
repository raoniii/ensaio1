import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ThemeSettingsPage extends StatelessWidget {
  final void Function(ThemeMode) updateTheme;
  final ThemeMode _themeMode; // Adicionar a variável _themeMode

  ThemeSettingsPage(this.updateTheme, this._themeMode); // Receber o _themeMode no construtor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Settings'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('System Theme'),
            trailing: Radio(
              value: ThemeMode.system,
              groupValue: _themeMode,
              onChanged: (value) {
                updateTheme(ThemeMode.system);
              },
            ),
          ),
          ListTile(
            title: Text('Light Theme'),
            trailing: Radio(
              value: ThemeMode.light,
              groupValue: _themeMode,
              onChanged: (value) {
                updateTheme(ThemeMode.light);
              },
            ),
          ),
          ListTile(
            title: Text('Dark Theme'),
            trailing: Radio(
              value: ThemeMode.dark,
              groupValue: _themeMode,
              onChanged: (value) {
                updateTheme(ThemeMode.dark);
              },
            ),
          ),
        ],
      ),
    );
  }
}

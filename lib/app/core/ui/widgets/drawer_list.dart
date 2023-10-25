import 'package:ensaio1/app/core/navigation/nav.dart';
import 'package:ensaio1/app/pages/config_page.dart';
import 'package:ensaio1/app/pages/profilepage.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  late ThemeMode _themeMode;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Raoni Ferreira"),
              accountEmail: Text("pixraoni@gmail.com"),

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/D4D03AQFkqPn5DZ_yew/profile-displayphoto-shrink_800_800/0/1664474145421?e=1703116800&v=beta&t=Ml9nfbcR8KXWZrbVukZuUmDNWA-kRmln9BZi0dlX6a8"),
              ),

            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Perfil"),
              subtitle: Text("Editar perfil"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                push(context, ProfilePage());
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Configuração"),
              subtitle: Text("Cor, fonte ..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                push(context, ThemeSettingsPage(_themeMode as void Function(ThemeMode p1), _themeMode));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Ajuda e Feedback"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

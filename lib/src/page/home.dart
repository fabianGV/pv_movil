import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  final String formattedDate =
      DateFormat('kk:mm:ss \n EEE d MMM').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Punto de venta'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('$formattedDate'),
              accountEmail: Text('Fecha: yyyy-MM-dd'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  'PV',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text('Indicadores'),
              leading: Icon(Icons.bar_chart_rounded),
              onTap: () {},
            ),
            ListTile(
              title: Text('Productos'),
              leading: Icon(Icons.article),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}

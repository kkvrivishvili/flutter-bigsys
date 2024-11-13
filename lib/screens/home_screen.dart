```dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_ui_app/widgets/database_operations.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/logo.svg', height: 40),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '¡Bienvenido! ¿Qué deseas hacer hoy?',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => DatabaseOperations.editTables(),
              child: Text('Editar tablas'),
            ),
            ElevatedButton(
              onPressed: () => DatabaseOperations.editClients(),
              child: Text('Editar Clientes'),
            ),
            ElevatedButton(
              onPressed: () => DatabaseOperations.issueEstimate(),
              child: Text('Emitir Presupuesto'),
            ),
            ElevatedButton(
              onPressed: () => DatabaseOperations.issueReceipt(),
              child: Text('Emitir Comprobante'),
            ),
            ElevatedButton(
              onPressed: () => DatabaseOperations.synchronize(),
              child: Text('Sincronizar'),
            ),
          ],
        ),
      ),
    );
  }
}
```

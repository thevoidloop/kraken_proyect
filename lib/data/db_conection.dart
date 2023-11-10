import 'package:mysql1/mysql1.dart';

class DBConecction {
  var conn;
  var settings = ConnectionSettings(
    host: '192.168.88.240',
    port: 3306,
    user: 'voidloop',
    password: 'arduino',
    db: 'db',
  );

  void conectar() async {
    try {
      conn = await MySqlConnection.connect(settings);
      print('Conexion con exito');
      verificar_scans();
    } catch (e) {
      print('Error en la conexion: ');
      print(e);
    }
  }

  Future verificar_scans() async {
    var userId = 3;
    var results = await conn.query('SELECT COUNT(*) as nuevo FROM db.scans WHERE user_id = ? AND status = 0', [userId]);
    print(results);
    return 1;
  }
}

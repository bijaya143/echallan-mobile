import 'package:echalan/app/app.dart';
import 'package:echalan/bootstrap.dart';
import 'package:echalan/start_up.dart';

void main() async {
  await startUp();
  bootstrap(() => App());
}

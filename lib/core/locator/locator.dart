import 'package:echalan/core/service/api_services/api_service.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.instance;

Future<void> initDependencies() async {
  di
    ..registerSingleton(
      ApiService(),
    );

  await di.allReady();
}

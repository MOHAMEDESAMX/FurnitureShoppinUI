import 'package:furniture_shoppin_ui/core/services/auth_service.dart';
import 'package:furniture_shoppin_ui/core/services/media_services.dart';
import 'package:get_it/get_it.dart';

Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;
  getIt.registerLazySingleton<AuthService>(
    () => AuthService(),
  );
  getIt.registerLazySingleton<MediaServices>(
    () => MediaServices(),
  );

}

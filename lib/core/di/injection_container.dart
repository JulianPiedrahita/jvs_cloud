import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:local_auth/local_auth.dart';

import '../network/dio_client.dart';
import '../network/network_info.dart';
import '../storage/secure_storage_service.dart';
import '../storage/preferences_service.dart';
import '../security/biometric_service.dart';
import '../router/app_router.dart';
import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';
import '../../features/auth/domain/usecases/register_usecase.dart';
import '../../features/auth/domain/usecases/logout_usecase.dart';
import '../../features/auth/domain/usecases/refresh_token_usecase.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';

import 'injection_container.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> init() async {
  // External dependencies
  await _registerExternalDependencies();
  
  // Configure injectable
  getIt.init();
}

Future<void> _registerExternalDependencies() async {
  // Shared Preferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  
  // Secure Storage
  const secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );
  getIt.registerLazySingleton<FlutterSecureStorage>(() => secureStorage);
  
  // Connectivity
  getIt.registerLazySingleton<Connectivity>(() => Connectivity());
  
  // Local Auth
  getIt.registerLazySingleton<LocalAuthentication>(() => LocalAuthentication());
  
  // Dio
  getIt.registerLazySingleton<Dio>(() => Dio());
  
  // Register core services manually
  getIt.registerLazySingleton<SecureStorageService>(
    () => SecureStorageServiceImpl(getIt<FlutterSecureStorage>()),
  );
  
  getIt.registerLazySingleton<PreferencesService>(
    () => PreferencesServiceImpl(getIt<SharedPreferences>()),
  );
  
  getIt.registerLazySingleton<BiometricService>(
    () => BiometricServiceImpl(getIt<LocalAuthentication>()),
  );
  
  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(getIt<Connectivity>()),
  );
  
  getIt.registerLazySingleton<DioClient>(
    () => DioClient(getIt<Dio>(), getIt<SecureStorageService>()),
  );
  
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  
  // Register auth services
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(getIt<DioClient>()),
  );
  
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: getIt<AuthRemoteDataSource>(),
      secureStorage: getIt<SecureStorageService>(),
      networkInfo: getIt<NetworkInfo>(),
    ),
  );
  
  // Register use cases
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(getIt<AuthRepository>()),
  );
  
  getIt.registerLazySingleton<RegisterUseCase>(
    () => RegisterUseCase(getIt<AuthRepository>()),
  );
  
  getIt.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(getIt<AuthRepository>()),
  );
  
  getIt.registerLazySingleton<RefreshTokenUseCase>(
    () => RefreshTokenUseCase(getIt<AuthRepository>()),
  );
  
  // Register BLoC as factory (new instance each time)
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginUseCase: getIt<LoginUseCase>(),
      registerUseCase: getIt<RegisterUseCase>(),
      logoutUseCase: getIt<LogoutUseCase>(),
      refreshTokenUseCase: getIt<RefreshTokenUseCase>(),
      biometricService: getIt<BiometricService>(),
    ),
  );
}
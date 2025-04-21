import 'package:biolo_app/layers/data/datasources/buscar_casa_datasource.dart';
import 'package:biolo_app/layers/data/repositories/buscar_casa_repository_imp.dart';
import 'package:biolo_app/layers/domain/repositories/buscar_casa_repository.dart';
import 'package:biolo_app/layers/domain/usecases/buscar_casa/buscar_casa_usecase.dart';
import 'package:biolo_app/layers/domain/usecases/buscar_casa/buscar_casa_usecase_imp.dart';
import 'package:biolo_app/layers/presentation/ui/controller/auth/cad_casa_controller.dart';
import 'package:get_it/get_it.dart';
import '../../layers/data/datasources/local/buscar_casa_local_datasource_imp.dart';

class Inject {
  static void init() {
    GetIt sl = GetIt.I;

    print("antes de iniciar o resgister datasourceImp");
    // datasource
    sl.registerLazySingleton<BuscarCasaDatasource>(
        () => BuscarCasaLocalDatasourceImp());
    print("depois de iniciar o resgister datasourceImp $sl");

    // repository pegar casa repo
    sl.registerLazySingleton<BuscarCasaRepository>(
        () => BuscarCasaRepositoryImp(sl()));
    // usecases pegar casa
    sl.registerLazySingleton<BuscarCasaUsecase>(
        () => BuscarCasaUsecaseImp(sl()));
    // controller
    sl.registerFactory<CadCasaController>(() => CadCasaController(sl(), ));
  }
}

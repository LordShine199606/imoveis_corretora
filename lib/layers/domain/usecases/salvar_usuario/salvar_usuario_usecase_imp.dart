import 'package:biolo_app/layers/domain/entities/cliente_entity.dart';
import 'package:biolo_app/layers/domain/repositories/salvar_usuario_repository.dart';
import 'package:biolo_app/layers/domain/usecases/salvar_usuario/salvar_usuario.dart';

class SalvarUsuarioUsecaseImp implements SalvarUsuarioNovo{

  final SalvarUsuarioRepository _salvarUsuarioRepository;


  SalvarUsuarioUsecaseImp(this._salvarUsuarioRepository);
  @override
  Future<bool> call(ClienteEntity clienteEntity)  async{
   return await _salvarUsuarioRepository(clienteEntity) ;
  }
}
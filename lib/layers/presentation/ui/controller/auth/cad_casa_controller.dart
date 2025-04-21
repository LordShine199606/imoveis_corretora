  
import '../../../../data/dto/casa_dto.dart';

import '../../../../domain/usecases/buscar_casa/buscar_casa_usecase.dart';


class CadCasaController {

  final BuscarCasaUsecase buscarCasaUsecase;


   CadCasaController(this.buscarCasaUsecase, 
   
   )

{
    buscarcasaMethod("Nova Vida","t4");
  }
  
  

late CasaDto buscarCasa;

 

  buscarcasaMethod (String endereco ,String topologia){

    
 buscarCasa=  buscarCasaUsecase(endereco, topologia);
  }
  // salvarCasa (CasaDto casa) async{
  //   var salvarcasa= await salvarCasaFavoritoUsecase(casa);
  //   salvarcasa;
  // }

}
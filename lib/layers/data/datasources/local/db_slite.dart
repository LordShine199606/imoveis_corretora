import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  // criar um contrutor privado
  DB._();

  // criar uma instancia de DB
  static final DB instancia = DB._();
// criar a instancia do sqLIte
  static Database? _database;

  get database async {
    if (database != null) 
    return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    const nomeDb ="biolo.db";
    final pathName =await getDatabasesPath();
    return  (
      join(pathName, nomeDb),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, versao) async {
    await db.execute(_casaBanco);
    await db.execute(_clienteBanco);
    await db.execute(_contratoBanco);
    await db.execute(_pagamentoBanco);
    await db.execute(_proprietarioBanco);
    await db.execute(_visitasBanco);
  }
// Criar as tabelas
  String get _casaBanco => '''

CREATE TABLE casaBanco (

idCasa TEXT PRIMARY KEY,
descricaoDaCasa TEXT ,
enderecoCasa TEXT NOT NULL,
precoDaCasa REAL NOT NULL ,
estadoDaCasa TEXT NOT NULL CHECK (estadoDaCasa IN ('aluguel', 'venda')),
tipoCasa TEXT NOT NULL ,
topologiaCasa TEXT,
proprietarioIdCasa TEXT,
 FOREIGN KEY (id_proprietario) REFERENCES PropeitarioDto(id)

);
''';

  String get _clienteBanco => '''

CREATE TABLE clienteBanco (

idClienteBnc TEXT PRIMARY KEY,
nomeClienteBnc TEXT ,
emailClienteBnc TEXT NOT NULL,
senhaClienteBnc REAL NOT NULL ,
documentoClienteBnc TEXT NOT NULL UNIQUE,
);
''';
  String get _contratoBanco => '''

CREATE TABLE clienteBanco (

  id TEXT PRIMARY KEY,
  idCasa TEXT NOT NULL,
  idCliente TEXT NOT NULL,
  dataInicio TEXT NOT NULL,
  dataFim TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('ativo', 'encerrado')),
  FOREIGN KEY (id_casa) REFERENCES casas(id),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);
''';

  String get _pagamentoBanco => '''

CREATE TABLE pagamentoBanco (

  id TEXT PRIMARY KEY,
  contrato_id TEXT NOT NULL,
  valor REAL NOT NULL,
  data_pagamento TEXT NOT NULL,
  metodo_pagamento TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('Pendente', 'Concluído')),
  FOREIGN KEY (contrato_id) REFERENCES contratos(id)
);
''';

  String get _proprietarioBanco => '''

CREATE TABLE proprietarioBanco (

  id TEXT PRIMARY KEY,
  nome TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  telefone TEXT NOT NULL,
  documento TEXT NOT NULL,
  endereco TEXT NOT NULL
);
''';
  String get _visitasBanco => '''

CREATE TABLE visitasBanco (

  id TEXT PRIMARY KEY,
  id_casa TEXT NOT NULL,
  id_cliente TEXT NOT NULL,
  data_visita TEXT NOT NULL,        -- Data da visita (ex.: 2024-12-06)
  hora_inicio TEXT NOT NULL,        -- Hora de início da visita (ex.: 10:00)
  hora_fim TEXT NOT NULL,           -- Hora de fim da visita (ex.: 11:00)
  FOREIGN KEY (id_casa) REFERENCES casas(id),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);
''';
}

class Usuario{

  //Atributos
  String _nome;
  String _usuario;
  String _senha;

  //Construtor
  Usuario(this._nome, this._usuario,this._senha);

  //Getters
  String get nome => _nome;
  String get usuario => _usuario;
  String get senha => _senha;

  Usuario.map(dynamic obj){
    this._nome = obj["nome"];
    this._usuario = obj["usuario"];
    this._senha = obj["senha"];
  }

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
      if (_usuario != null){
        map["usuario"] = _usuario;
      }
      map["nome"] = _nome;
      map["senha"] = _senha;
      return map;
  }

  //Converter um Mapa para o modelo de dados
  Usuario.fromMap(Map<String,dynamic> map, String usuario){
    //Atribuir usuario ao this._usuario, somente se o usuario não for 
    //nulo, caso contrário atribui ""(vazio).
    this._usuario = usuario ?? "";
    this._senha = map["senha"];
    this._nome = map["nome"];
  }

}
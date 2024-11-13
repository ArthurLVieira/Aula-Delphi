unit Menu.Controller.Conexoes.FireDac.Postegres;

interface

uses Menu.Controller.Conexoes.Interfaces, Menu.Model.Conexoes.Interfaces;

type

  TControllerConexoesFireDacPostegres = class(TInterfacedObject, IControllerConexoesFireDacPostegres)
    private

    public
      constructor Create;
      destructor Destroy; override;
      class function New : IControllerConexoesFireDacPostegres;
      function ConexaoFireDac : IModelConexao;

  end;

implementation

uses Menu.Model.Conexoes.Factory.Conexao;

{ TControllerConexoesFireDacPostegres }

function TControllerConexoesFireDacPostegres.ConexaoFireDac: IModelConexao;
begin
  Result := TModelConexoesFactoryConexao.New.ConexaoFiredac.Parametros
    .DataBase('')
    .UserName('')
    .Password('')
    .DriverID('')
    .Server('')
    .Port(0)
    .EndParametros.Conectar;
end;

constructor TControllerConexoesFireDacPostegres.Create;
begin

end;

destructor TControllerConexoesFireDacPostegres.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFireDacPostegres.New: IControllerConexoesFireDacPostegres;
begin
  Result := Self.Create;
end;

end.

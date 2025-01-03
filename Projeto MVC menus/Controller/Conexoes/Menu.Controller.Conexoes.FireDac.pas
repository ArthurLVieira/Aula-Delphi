unit Menu.Controller.Conexoes.FireDac;

interface

uses Menu.Controller.Conexoes.Interfaces, Menu.Model.Conexoes.Interfaces;

type

  TControllerConexoesFireDac = class(TInterfacedObject,
    IControllerConexoesFireDac)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFireDac;
    function ConexaoFireDacPostegres: IModelConexao;
    function ConexaoFireDacMySql: IModelConexao;
  end;

implementation

{ TControllerConexoesFireDac }

uses Menu.Model.Conexoes.Factory.Conexao;

function TControllerConexoesFireDac.ConexaoFireDacMySql: IModelConexao;
begin
  Result := TModelConexoesFactoryConexao.New.ConexaoFiredac.Parametros.DataBase
    ('').UserName('').Password('').DriverID('').Server('').Port(0)
    .EndParametros.Conectar;
end;

function TControllerConexoesFireDac.ConexaoFireDacPostegres: IModelConexao;
begin
  Result := TModelConexoesFactoryConexao.New.ConexaoFiredac.Parametros.DataBase
    ('').UserName('').Password('').DriverID('').Server('').Port(0)
    .EndParametros.Conectar;
end;

constructor TControllerConexoesFireDac.Create;
begin

end;

destructor TControllerConexoesFireDac.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFireDac.New: IControllerConexoesFireDac;
begin
  Result := Self.Create;
end;

end.

unit Menu.Model.Conexoes.Parametros;

interface

uses Menu.Model.Conexoes.Interfaces;

type

  TModelConexoesParametros = class(TInterfacedObject, IModelConexaoParametros)
  private
    FDataBase: string;
    FUserName: string;
    FPassword: string;
    FDriverID: string;
    FServer: string;
    FPort: Integer;

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexaoParametros;
    function DataBase(Value: string): IModelConexaoParametros;
    function UserName(Value: string): IModelConexaoParametros;
    function Password(Value: string): IModelConexaoParametros;
    function DriverID(Value: string): IModelConexaoParametros;
    function Server(Value: string): IModelConexaoParametros;
    function Port(Value: Integer): IModelConexaoParametros;
    function EndParametros: IModelConexao;
  end;

implementation

{ TModelConexoesParametros }

constructor TModelConexoesParametros.Create;
begin

end;

function TModelConexoesParametros.DataBase(
  Value: string): IModelConexaoParametros;
begin
  Result := Self;
  FDataBase := Value;
end;

destructor TModelConexoesParametros.Destroy;
begin

  inherited;
end;

function TModelConexoesParametros.DriverID(
  Value: string): IModelConexaoParametros;
begin

end;

function TModelConexoesParametros.EndParametros: IModelConexao;
begin
  Result := Self;
end;

class function TModelConexoesParametros.New: IModelConexaoParametros;
begin
  Result := Self.Create;
end;

function TModelConexoesParametros.Password(
  Value: string): IModelConexaoParametros;
begin

end;

function TModelConexoesParametros.Port(Value: Integer): IModelConexaoParametros;
begin

end;

function TModelConexoesParametros.Server(
  Value: string): IModelConexaoParametros;
begin

end;

function TModelConexoesParametros.UserName(
  Value: string): IModelConexaoParametros;
begin

end;

end.

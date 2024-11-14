unit Menu.Model.Conexoes.FireDac.Conexao;

interface

uses FireDac.Comp.Client, System.Classes,
  FireDac.Comp.UI, FireDac.Phys.FB, FireDac.Phys, FireDac.Phys.Intf,
  Menu.Model.Conexoes.FireDac.Interfaces;

type

  TModelConexaoFiredac = class(TInterfacedObject, IModelConexaoFireDac,
    IModelConexaoParametrosFireDac)
  private
    class var FInstance : TModelConexaoFiredac;
    FConexao: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysDriverLink: TFDPhysDriverLink;
    FDataBase: string;
    FUserName: string;
    FPassword: string;
    FDriverID: string;
    FServer: string;
    FPort: Integer;
    procedure LerParametros;
  public
    constructor Create(DriverLink: TFDPhysDriverLink);
    destructor Destroy; override;
    class function New(DriverLink: TFDPhysDriverLink): IModelConexaoFireDac;
    function EndConexao: TComponent;
    function Conectar: IModelConexaoFireDac;
    function Parametros: IModelConexaoParametrosFireDac;
    function DataBase(Value: string): IModelConexaoParametrosFireDac;
    function UserName(Value: string): IModelConexaoParametrosFireDac;
    function Password(Value: string): IModelConexaoParametrosFireDac;
    function DriverID(Value: string): IModelConexaoParametrosFireDac;
    function Server(Value: string): IModelConexaoParametrosFireDac;
    function Port(Value: Integer): IModelConexaoParametrosFireDac;
    function EndParametros: IModelConexaoFireDac;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Conectar: IModelConexaoFireDac;
begin
  Result := Self;
  LerParametros;
  FConexao.Connected := True;
end;

constructor TModelConexaoFiredac.Create(DriverLink: TFDPhysDriverLink);
begin
  FConexao := TFDConnection.Create(nil);
  FDGUIxWaitCursor := TFDGUIxWaitCursor.Create(nil);
  FDPhysDriverLink := DriverLink;

end;

function TModelConexaoFiredac.DataBase(Value: string): IModelConexaoParametrosFireDac;
begin
  Result := Self;
  FDataBase := Value;
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FConexao.Free;
  FDGUIxWaitCursor.Free;

  inherited;
end;

function TModelConexaoFiredac.DriverID(Value: string): IModelConexaoParametrosFireDac;
begin
  Result := Self;
  FDriverID := Value;
end;

function TModelConexaoFiredac.EndConexao: TComponent;
begin
  Result := FConexao;
end;

function TModelConexaoFiredac.EndParametros: IModelConexaoFireDac;
begin
  Result := Self;
end;

procedure TModelConexaoFiredac.LerParametros;
begin
  FConexao.Params.DataBase := FDataBase;
  FConexao.Params.UserName := FUserName;
  FConexao.Params.Password := FPassword;
  FConexao.Params.DriverID := FDriverID;
  FConexao.Params.Add('Server=' + FServer);
  FConexao.Params.Add('Port=' + IntToStr(FPort));
end;

class function TModelConexaoFiredac.New(DriverLink: TFDPhysDriverLink)
  : IModelConexaoFireDac;
begin
  if not Assigned(FInstance) then
    FInstance := Self.Create(DriverLink);
  Result := FInstance;
end;

function TModelConexaoFiredac.Parametros: IModelConexaoParametrosFireDac;
begin
  Result := Self;
end;

function TModelConexaoFiredac.Password(Value: string): IModelConexaoParametrosFireDac;
begin
  Result := Self;
  FPassword := Value;
end;

function TModelConexaoFiredac.Port(Value: Integer): IModelConexaoParametrosFireDac;
begin
  Result := Self;
  FPort := Value;
end;

function TModelConexaoFiredac.Server(Value: string): IModelConexaoParametrosFireDac;
begin
  Result := Self;
  FServer := Value;
end;

function TModelConexaoFiredac.UserName(Value: string): IModelConexaoParametrosFireDac;
begin
  Result := Self;
  FUserName := Value;
end;

end.

unit Menu.Model.Conexoes.ConexaoFiredac;

interface

uses Menu.Model.Conexoes.Interfaces, FireDAC.Comp.Client, System.Classes,
  FireDAC.Comp.UI, FireDAC.Phys.FB;

type

  TModelConexaoFiredac = class(TInterfacedObject, IModelConexao,
    IModelConexaoParametros)
  private
    FConexao: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDataBase: string;
    FUserName: string;
    FPassword: string;
    FDriverID: string;
    FServer: string;
    FPort: Integer;
    procedure LerParametros;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexao;
    function EndConexao: TComponent;
    function Conectar: IModelConexao;
    function Parametros: IModelConexaoParametros;
    function DataBase(Value: string): IModelConexaoParametros;
    function UserName(Value: string): IModelConexaoParametros;
    function Password(Value: string): IModelConexaoParametros;
    function DriverID(Value: string): IModelConexaoParametros;
    function Server(Value: string): IModelConexaoParametros;
    function Port(Value: Integer): IModelConexaoParametros;
    function EndParametros: IModelConexao;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Conectar: IModelConexao;
begin
  Result := Self;
    LerParametros;
    FConexao.Connected := True;
end;

constructor TModelConexaoFiredac.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FDGUIxWaitCursor := TFDGUIxWaitCursor.Create(nil);
  FDPhysFBDriverLink := TFDPhysFBDriverLink.Create(nil);

end;

function TModelConexaoFiredac.DataBase(Value: string): IModelConexaoParametros;
begin
  Result := Self;
  FDataBase := Value;
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FConexao.Free;
  FDGUIxWaitCursor.Free;
  FDPhysFBDriverLink.Free;

  inherited;
end;

function TModelConexaoFiredac.DriverID(Value: string): IModelConexaoParametros;
begin
  Result := Self;
  FDriverID := Value;
end;

function TModelConexaoFiredac.EndConexao: TComponent;
begin
  Result := FConexao;
end;

function TModelConexaoFiredac.EndParametros: IModelConexao;
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

class function TModelConexaoFiredac.New: IModelConexao;
begin
  Result := Self.Create;
end;

function TModelConexaoFiredac.Parametros: IModelConexaoParametros;
begin
  Result := Self;
end;

function TModelConexaoFiredac.Password(Value: string): IModelConexaoParametros;
begin
  Result := Self;
  FPassword := Value;
end;

function TModelConexaoFiredac.Port(Value: Integer): IModelConexaoParametros;
begin
  Result := Self;
  FPort := Value;
end;

function TModelConexaoFiredac.Server(Value: string): IModelConexaoParametros;
begin
  Result := Self;
  FServer := Value;
end;

function TModelConexaoFiredac.UserName(Value: string): IModelConexaoParametros;
begin
  Result := Self;
  FUserName := Value;
end;

end.

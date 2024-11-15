unit Menu.Controller.Conexoes.FireDac.Postgres;

interface

uses
  Menu.Controller.Conexoes.FireDac.Interfaces, FireDac.Phys,
  Menu.Model.Conexoes.FireDac.Interfaces, FireDac.Phys.PG;

type

  TControllerConexoesFireDacPostegres = class(TInterfacedObject,
    IControllerConexoesFireDac)
  private
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFireDac;
    function Conectar: IModelConexaoFireDac;
  end;

implementation

{ TControllerConexoesFireDacPostegres }

uses Menu.Model.Conexoes.Facade;

constructor TControllerConexoesFireDacPostegres.Create;
begin
  FDPhysPgDriverLink := TFDPhysPgDriverLink.Create(nil);
end;

destructor TControllerConexoesFireDacPostegres.Destroy;
begin
  FDPhysPgDriverLink.Free;

  inherited;
end;

class function TControllerConexoesFireDacPostegres.New
  : IControllerConexoesFireDac;
begin
  Result := Self.Create;
end;

function TControllerConexoesFireDacPostegres.Conectar: IModelConexaoFireDac;
begin
  Result := TModelConexoesFacade.New
    .Conexao
      .FireDac(FDPhysPgDriverLink)
      .Parametros
        .DataBase('')
        .UserName('')
        .Password('')
        .DriverID('PG')
        .Server('')
      .Port(5401).EndParametros.Conectar;
end;

end.

unit Menu.Controller.Conexoes.FireDac.Postgres;

interface

uses
  Menu.Controller.Conexoes.FireDac.Interfaces, FireDac.Phys,
  Menu.Model.Conexoes.FireDac.Interfaces, FireDAC.Phys.PG;

type

  TControllerConexoesFireDacPostegres = class(TInterfacedObject,
    IControllerConexoesFireDacPostegres)
  private
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFireDacPostegres;
    function Postegres: IModelConexaoFireDac;
  end;

implementation

{ TControllerConexoesFireDacPostegres }

uses Menu.Model.Conexoes.Facade;

constructor TControllerConexoesFireDacPostegres.Create;
begin

end;

destructor TControllerConexoesFireDacPostegres.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFireDacPostegres.New
  : IControllerConexoesFireDacPostegres;
begin
  Result := Self.Create;
end;

function TControllerConexoesFireDacPostegres.Postegres: IModelConexaoFireDac;
begin
  Result := TModelConexoesFacade.New.Conexao
    .FireDac(FDPhysPgDriverLink)
      .Parametros
        .DataBase('')
        .UserName('')
        .Password('')
        .DriverID('PG')
        .Server('')
        .Port(5401)
        .EndParametros
      .Conectar;
end;

end.
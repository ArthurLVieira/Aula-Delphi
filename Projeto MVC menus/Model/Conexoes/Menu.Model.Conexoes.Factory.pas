unit Menu.Model.Conexoes.Factory;

interface

uses Menu.Model.Conexoes.Interfaces, FireDac.Phys,
  Menu.Model.Conexoes.FireDac.Interfaces;

type

  TModelConexaoFactory = class(TInterfacedObject,
    IModelConexaoFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexaoFactory;
    function FireDac(DriverLink: TFDPhysDriverLink): IModelConexaoFireDac;
  end;

implementation

{ IModelConexaoFactory }

uses Menu.Model.Conexoes.FireDac.Conexao;

constructor TModelConexaoFactory.Create;
begin

end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;


class function TModelConexaoFactory.New: IModelConexaoFactory;
begin
  Result := Self.Create;
end;

function TModelConexaoFactory.FireDac(
  DriverLink: TFDPhysDriverLink): IModelConexaoFireDac;
begin
  Result := TModelConexaoFiredac.New(DriverLink);
end;

end.


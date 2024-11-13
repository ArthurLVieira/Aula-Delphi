unit Menu.Model.Conexoes.FireDac.Factory;

interface

uses Menu.Model.Conexoes.FireDac.Interfaces, FireDac.Phys;

type

  TModelConexaoFireDacFactory = class(TInterfacedObject,
    IModelConexaoFireDacFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexaoFireDacFactory;
    function FireDac(DriverLink: TFDPhysDriverLink): IModelConexaoFireDac;
  end;

implementation

{ IModelConexaoFireDacFactory }

uses Menu.Model.Conexoes.FireDac.Conexao;

constructor TModelConexaoFireDacFactory.Create;
begin

end;

destructor TModelConexaoFireDacFactory.Destroy;
begin

  inherited;
end;


class function TModelConexaoFireDacFactory.New: IModelConexaoFireDacFactory;
begin
  Result := Self.Create;
end;

function TModelConexaoFireDacFactory.FireDac(
  DriverLink: TFDPhysDriverLink): IModelConexaoFireDac;
begin
  Result := TModelConexaoFiredac.New(DriverLink);
end;

end.


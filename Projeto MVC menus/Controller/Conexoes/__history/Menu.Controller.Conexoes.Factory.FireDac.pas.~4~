unit Menu.Controller.Conexoes.Factory.FireDac;

interface

uses Menu.Controller.Conexoes.Interfaces, Menu.Model.Conexoes.Factory.DataSet,
  Menu.Model.Conexoes.Interfaces;

type

  TControllerConexoesFactoryFireDac = class(TInterfacedObject,
    IControllerConexoesFactoryDataSet)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFactoryDataSet;
    function DataSet(Conexao : IModelConexao): IModelDataSet;
  end;

implementation

{ TControllerConexoesFactoryFireDac }

constructor TControllerConexoesFactoryFireDac.Create;
begin

end;

function TControllerConexoesFactoryFireDac.DataSet(Conexao : IModelConexao): IModelDataSet;
begin
  Result := TModelConexoesFactoryDataSet.New.DataSetFiredac(Conexao);
end;

destructor TControllerConexoesFactoryFireDac.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFactoryFireDac.New: IControllerConexoesFactoryDataSet;
begin
  Result := Self.Create;
end;

end.

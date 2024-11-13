unit Menu.Model.Conexoes.Factory.DataSet;

interface

uses Menu.Model.Conexoes.Interfaces;

type

  TModelConexoesFactoryDataSet = class(TInterfacedObject, IModelFactoryDataSet)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelFactoryDataSet;
    function DataSetFiredac(Conexao: IModelConexao): IModelDataSet;
  end;

implementation

{ TModelConexoesFactoryDataSet }

uses Menu.Model.Conexoes.TableFiredac;

constructor TModelConexoesFactoryDataSet.Create;
begin

end;

function TModelConexoesFactoryDataSet.DataSetFiredac(Conexao: IModelConexao)
  : IModelDataSet;
begin
  Result := TModelConexoesTableFiredac.New(Conexao);
end;

destructor TModelConexoesFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TModelConexoesFactoryDataSet.New: IModelFactoryDataSet;
begin
  Result := Self.Create;
end;

end.

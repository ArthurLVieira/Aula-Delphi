unit Menu.Model.Conexoes.DataSet.Factory;

interface

uses Menu.Model.Conexoes.DataSet.Interfaces,
  Menu.Model.Conexoes.FireDac.Interfaces;

type

  TModelConexoesFactoryDataSet = class(TInterfacedObject, IModelConexoesDataSetFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexoesDataSetFactory;
    function DataSetFiredac(Conexao: IModelConexaoFireDac): IModelConexoesDataSet;
  end;

implementation

{ TModelConexoesFactoryDataSet }

uses Menu.Model.Conexoes.DataSet.Conexao;

constructor TModelConexoesFactoryDataSet.Create;
begin

end;

function TModelConexoesFactoryDataSet.DataSetFiredac(Conexao: IModelConexaoFireDac): IModelConexoesDataSet;
begin
  Result := TModelConexoesDataSet.New(Conexao);
end;

destructor TModelConexoesFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TModelConexoesFactoryDataSet.New: IModelConexoesDataSetFactory;
begin
  Result := Self.Create;
end;

end.

unit Menu.Model.Conexoes.DataSet.Factory;

interface

uses Menu.Model.Conexoes.DataSet.Interfaces,
  Menu.Model.Conexoes.FireDac.Interfaces;

type

  TModelConexoesDataSetFactory = class(TInterfacedObject, IModelConexoesDataSetFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexoesDataSetFactory;
    function DataSetFiredac(Conexao: IModelConexaoFireDac): IModelConexoesDataSet;
  end;

implementation

{ TModelConexoesDataSetFactory }

uses Menu.Model.Conexoes.DataSet.Conexao;

constructor TModelConexoesDataSetFactory.Create;
begin

end;

function TModelConexoesDataSetFactory.DataSetFiredac(Conexao: IModelConexaoFireDac): IModelConexoesDataSet;
begin
  Result := TModelConexoesDataSet.New(Conexao);
end;

destructor TModelConexoesDataSetFactory.Destroy;
begin

  inherited;
end;

class function TModelConexoesDataSetFactory.New: IModelConexoesDataSetFactory;
begin
  Result := Self.Create;
end;

end.




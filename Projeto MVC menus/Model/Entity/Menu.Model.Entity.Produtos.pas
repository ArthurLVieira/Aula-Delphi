unit Menu.Model.Entity.Produtos;

interface

uses Menu.Model.Entity.Interfaces, System.Classes,
  Menu.Model.Conexoes.DataSet.Interfaces;

type

  TModelEntityProdutos = class(TInterfacedObject, IModelEntity)
  private
    FDataSet: IModelConexoesDataSet;
  public
    constructor Create(DataSet: IModelConexoesDataSet);
    destructor Destroy; override;
    class function New(DataSet: IModelConexoesDataSet): IModelEntity;
    function Listar: TComponent;
  end;

implementation

const
  FTABLENAME = 'PRODUTOS';

  { TModelEntityProdutos }

constructor TModelEntityProdutos.Create(DataSet: IModelConexoesDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntityProdutos.Destroy;
begin

  inherited;
end;

function TModelEntityProdutos.Listar: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityProdutos.New(DataSet: IModelConexoesDataSet)
  : IModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.

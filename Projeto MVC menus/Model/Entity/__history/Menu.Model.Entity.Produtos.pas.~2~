unit Menu.Model.Entity.Produtos;

interface

uses Menu.Model.Entity.Interfaces, System.Classes,
  Menu.Model.Conexoes.Interfaces;

type

  TModelEntityProdutos = class(TInterfacedObject, IModelEntity)
  private
    FDataSet : IModelDataSet;
  public
    constructor Create(DataSet : IModelDataSet);
    destructor Destroy; override;
    class function New(DataSet : IModelDataSet): IModelEntity;
    function Listar : TComponent;
  end;

implementation

const
  FTABLENAME = 'PRODUTOS';

{ TModelEntityProdutos }

constructor TModelEntityProdutos.Create(DataSet : IModelDataSet);
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

class function TModelEntityProdutos.New(DataSet : IModelDataSet): IModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.

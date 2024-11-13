unit Menu.Model.Entity.Factory;

interface

uses Menu.Model.Entity.Interfaces, Menu.Model.Conexoes.Interfaces;

type

  TModelEntityFactory = class(TInterfacedObject, IModelEntityFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelEntityFactory;
    function Produtos(DataSet: IModelDataSet): IModelEntity;
    function Cliente(DataSet: IModelDataSet): IModelEntity;
  end;

implementation

{ TModelEntityFactory }

uses Menu.Model.Entity.Produtos, Menu.Model.Entity.Cliente;

function TModelEntityFactory.Cliente(DataSet: IModelDataSet): IModelEntity;
begin
  Result := TModelEntytiCliente.New(DataSet);
end;

constructor TModelEntityFactory.Create;
begin

end;

destructor TModelEntityFactory.Destroy;
begin

  inherited;
end;

class function TModelEntityFactory.New: IModelEntityFactory;
begin
  Result := Self.Create;
end;

function TModelEntityFactory.Produtos(DataSet: IModelDataSet): IModelEntity;
begin
  Result := TModelEntityProdutos.New(DataSet);

end;

end.

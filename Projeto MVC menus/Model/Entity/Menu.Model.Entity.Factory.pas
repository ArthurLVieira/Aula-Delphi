unit Menu.Model.Entity.Factory;

interface

uses Menu.Model.Entity.Interfaces,
  Menu.Model.Conexoes.DataSet.Interfaces;

type

  TModelEntityFactory = class(TInterfacedObject, IModelEntityFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelEntityFactory;
    function Produtos(DataSet: IModelConexoesDataSet): IModelEntity;
    function Cliente(DataSet: IModelConexoesDataSet): IModelEntity;
  end;

implementation

{ TModelEntityFactory }

uses Menu.Model.Entity.Produtos, Menu.Model.Entity.Cliente;

function TModelEntityFactory.Cliente(DataSet: IModelConexoesDataSet)
  : IModelEntity;
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

function TModelEntityFactory.Produtos(DataSet: IModelConexoesDataSet)
  : IModelEntity;
begin
  Result := TModelEntityProdutos.New(DataSet);

end;

end.

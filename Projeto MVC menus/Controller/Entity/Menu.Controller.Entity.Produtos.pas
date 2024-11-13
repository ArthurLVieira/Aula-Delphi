unit Menu.Controller.Entity.Produtos;

interface

uses Menu.Controller.Entity.Interfaces, Menu.Model.Conexoes.Interfaces,
  Menu.Model.Conexoes.Factory.Conexao, Menu.Model.Conexoes.Factory.DataSet,
  Menu.Model.Entity.Interfaces, Menu.Model.Entity.Factory, Data.DB;

type

  TControllerEntityProdutos = class(TInterfacedObject, IControllerEntity)
    private
      FConexao : IModelConexao;
      FDataSet : IModelDataSet;
      FEntity : IModelEntity;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IControllerEntity;
      function Lista(aDataSource: TDataSource): IControllerEntity;
  end;

implementation

{ TControllerEntityProdutos }

constructor TControllerEntityProdutos.Create;
begin
  FConexao := TModelConexoesFactoryConexao.New.ConexaoFiredac;
  FDataSet := TModelConexoesFactoryDataSet.New.DataSetFiredac(FConexao);
  FEntity := TModelEntityFactory.New.Produtos(FDataSet);
end;

destructor TControllerEntityProdutos.Destroy;
begin

  inherited;
end;

function TControllerEntityProdutos.Lista(
  aDataSource: TDataSource): IControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.Listar);
end;

class function TControllerEntityProdutos.New: IControllerEntity;
begin
  Result := Self.Create;
end;

end.

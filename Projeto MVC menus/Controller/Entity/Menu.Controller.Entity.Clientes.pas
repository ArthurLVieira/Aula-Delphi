unit Menu.Controller.Entity.Clientes;

interface

uses Menu.Controller.Entity.Interfaces, Menu.Model.Conexoes.Interfaces,
  Menu.Model.Conexoes.Factory.Conexao, Menu.Model.Conexoes.Factory.DataSet,
  Menu.Model.Entity.Interfaces, Menu.Model.Entity.Factory, Data.DB;

type

  TControllerEntityCliente = class(TInterfacedObject, IControllerEntity)
  private
    FConexao: IModelConexao;
    FDataSet: IModelDataSet;
    FEntity: IModelEntity;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerEntity;
    function Lista(aDataSource: TDataSource): IControllerEntity;
  end;

implementation

{ TControllerEntityCliente }

constructor TControllerEntityCliente.Create;
begin
  FConexao := TModelConexoesFactoryConexao.New.ConexaoFiredac;
  FDataSet := TModelConexoesFactoryDataSet.New.DataSetFiredac(FConexao);
  FEntity := TModelEntityFactory.New.Cliente(FDataSet);
end;

destructor TControllerEntityCliente.Destroy;
begin

  inherited;
end;

function TControllerEntityCliente.Lista(
  aDataSource: TDataSource): IControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.Listar);
end;

class function TControllerEntityCliente.New: IControllerEntity;
begin
  Result := Self.Create;
end;

end.

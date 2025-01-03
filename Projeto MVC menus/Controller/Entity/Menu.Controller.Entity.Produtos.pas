unit Menu.Controller.Entity.Produtos;

interface

uses Menu.Controller.Entity.Interfaces, Menu.Model.Conexoes.Interfaces,
  Menu.Model.Entity.Interfaces, Menu.Model.Entity.Factory, Data.DB;

type

  TControllerEntityProdutos = class(TInterfacedObject, IControllerEntity)
  private
    FFacade: IModelConexoesFacade;
    FEntity: IModelEntity;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerEntity;
    function Lista(aDataSource: TDataSource): IControllerEntity;
  end;

implementation

{ TControllerEntityProdutos }

uses Menu.Model.Conexoes.Facade;

constructor TControllerEntityProdutos.Create;
begin
  FFacade := TModelConexoesFacade.New;
  FEntity := TModelEntityFactory.New.;
end;

destructor TControllerEntityProdutos.Destroy;
begin

  inherited;
end;

function TControllerEntityProdutos.Lista(aDataSource: TDataSource)
  : IControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.Listar);
end;

class function TControllerEntityProdutos.New: IControllerEntity;
begin
  Result := Self.Create;
end;

end.

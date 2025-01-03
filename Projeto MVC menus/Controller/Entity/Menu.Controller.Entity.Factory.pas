unit Menu.Controller.Entity.Factory;

interface

uses Menu.Controller.Entity.Interfaces, Menu.Controller.Entity.Produtos,
  Menu.Controller.Entity.Clientes;

type

  TControllerEntityFactory = class(TInterfacedObject, IControllerEntityFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerEntityFactory;
    function Produtos: IControllerEntity;
    function Clientes : IControllerEntity;
  end;

implementation

{ TControllerEntityFactory }

function TControllerEntityFactory.Clientes: IControllerEntity;
begin
  Result := TControllerEntityCliente.New;
end;

constructor TControllerEntityFactory.Create;
begin

end;

destructor TControllerEntityFactory.Destroy;
begin

  inherited;
end;

class function TControllerEntityFactory.New: IControllerEntityFactory;
begin
  Result := Self.Create;
end;

function TControllerEntityFactory.Produtos: IControllerEntity;
begin
  Result := TControllerEntityProdutos.New;
end;

end.

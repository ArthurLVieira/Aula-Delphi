unit Menu.Controller.ListBox.Factory;

interface

uses Menu.Controller.Interfaces, System.Classes, Menu.Controller.ListBox.Default,
  Menu.Controller.ListBox.Cliente;

type

  TControllerListBoxFactory = class(TInterfacedObject,
    IControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxFactory;
    function Default(Container: TComponent): IControllerListBoxDefault;
    function Principal(Container: TComponent): IControllerListBoxMenu;
    function Produto(Container: TComponent): IControllerListBoxMenu;
    function Cliente(Container: TComponent): IControllerListBoxMenu;
  end;

implementation

{ TControllerListBoxFactory }

uses Menu.Controller.ListBox.Principal, Menu.Controller.ListBox.Produto;

function TControllerListBoxFactory.Cliente(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxCliente.New(Container);
end;

constructor TControllerListBoxFactory.Create;
begin

end;

function TControllerListBoxFactory.Default(
  Container: TComponent): IControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxFactory.New: IControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Principal(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxPrincipal.New(Container);
end;

function TControllerListBoxFactory.Produto(
  Container: TComponent): IControllerListBoxMenu;
begin
  Result := TControllerListBoxProduto.New(Container);
end;

end.

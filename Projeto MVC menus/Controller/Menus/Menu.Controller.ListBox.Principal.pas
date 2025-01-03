unit Menu.Controller.ListBox.Principal;

interface

uses Menu.Controller.Interfaces, System.Classes;

type

  TControllerListBoxPrincipal = class(TInterfacedObject, IControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): IControllerListBoxMenu;
    procedure Exibir;
  end;

implementation

{ TControllerListBoxPrincipal }

uses Menu.Controller.ListBox.Factory, Menu.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxPrincipal.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxPrincipal.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxPrincipal.Exibir;
begin
  TControllerListBoxFactory.New.Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Produto.Show)
    .AddItem(TControllerListBoxItensFactory.New.Cliente.Show)
    .Exibir;
end;

class function TControllerListBoxPrincipal.New(Container: TComponent)
  : IControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

end.

unit Menu.Controller.ListBox.Produto;

interface

uses Menu.Controller.Interfaces, System.Classes;

type

  TControllerListBoxProduto = class(TInterfacedObject, IControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): IControllerListBoxMenu;
    procedure Exibir;
  end;

implementation

{ TControllerListBoxProduto }

uses Menu.Controller.ListBox.Factory, Menu.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxProduto.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxProduto.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxProduto.Exibir;
begin
  TControllerListBoxFactory.New.Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Cliente.Show).Exibir;
end;

class function TControllerListBoxProduto.New(Container: TComponent)
  : IControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

end.

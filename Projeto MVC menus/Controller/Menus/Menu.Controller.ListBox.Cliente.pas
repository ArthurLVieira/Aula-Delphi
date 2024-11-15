unit Menu.Controller.ListBox.Cliente;

interface

uses Menu.Controller.Interfaces, System.Classes;

type

  TControllerListBoxCliente = class(TInterfacedObject, IControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): IControllerListBoxMenu;
    procedure Exibir;
  end;

implementation

{ TControllerListBoxCliente }

uses Menu.Controller.ListBox.Factory, Menu.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxCliente.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxCliente.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxCliente.Exibir;
begin
  TControllerListBoxFactory.New.Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Produto.Show)
    .Exibir;
end;

class function TControllerListBoxCliente.New(Container: TComponent)
  : IControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

end.

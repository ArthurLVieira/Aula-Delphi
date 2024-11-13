unit Menu.Controller.ListBox.Itens.Produto;

interface

uses Menu.Controller.Interfaces, FMX.Types;

type

  TControllerListBoxItensProduto = class(TInterfacedObject,
    IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItemForm;
    function Show: TFmxObject;
    procedure onClick(Sender: TObject);
  end;

implementation

{ TControllerListBoxItensProduto }

uses Menu.Controller.ListBox.Itens.Factory, Menu.Controller.Forms.Default;

constructor TControllerListBoxItensProduto.Create;
begin

end;

destructor TControllerListBoxItensProduto.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProduto.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensProduto.onClick(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TFrmProdutos');
end;

function TControllerListBoxItensProduto.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New.Default.Name('BtnProduto')
    .Text('Produtos')
    .onClick(onClick)
    .Item;
end;

end.

unit Menu.Controller.ListBox.Itens.Cliente;

interface

uses Menu.Controller.Interfaces, FMX.Types;

type
  TControllerListBoxItensCliente = class(TInterfacedObject,
    IControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItemForm;
    function Show: TFmxObject;
    procedure onClick(Sender: TObject);
  end;

implementation

{ TControllerListBoxItensCliente }

uses Menu.Controller.ListBox.Itens.Factory, Menu.Controller.Forms.Default;


constructor TControllerListBoxItensCliente.Create;
begin

end;

destructor TControllerListBoxItensCliente.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensCliente.New: IControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensCliente.onClick(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TFrmCliente');
end;

function TControllerListBoxItensCliente.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New. Default.Name('BtnCliente')
    .Text('Cliente')
    .onClick(onClick)
    .Item;
end;

end.

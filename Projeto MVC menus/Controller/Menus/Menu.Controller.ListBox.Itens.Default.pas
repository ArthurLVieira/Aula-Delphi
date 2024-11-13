unit Menu.Controller.ListBox.Itens.Default;

interface

uses Menu.Controller.Interfaces, FMX.ListBox, System.Classes, FMX.Types;

type

  TControllerListBoxItensDefault = class(TInterfacedObject,
    IControllerListBoxItensDefault)
  private
    FListBoxItem: TListBoxItem;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxItensDefault;
    function Name(Value: string): IControllerListBoxItensDefault;
    function Text(Value: string): IControllerListBoxItensDefault;
    function StyleLookup(Value: string): IControllerListBoxItensDefault;
    function onClick(Value: TNotifyEvent): IControllerListBoxItensDefault;
    function Item: TFMXObject;
  end;

implementation

{ TControllerListBoxItensDefault }

constructor TControllerListBoxItensDefault.Create;
begin
  FListBoxItem := TListBoxItem.Create(nil);
  FListBoxItem.Name := 'BtnDefault';
  FListBoxItem.Text := 'Default';
  FListBoxItem.StyleLookup := 'listboxitemdetaillabel';
end;

destructor TControllerListBoxItensDefault.Destroy;
begin

  inherited;
end;

function TControllerListBoxItensDefault.Item: TFMXObject;
begin
  Result := FListBoxItem;
end;

class function TControllerListBoxItensDefault.New
  : IControllerListBoxItensDefault;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensDefault.Name(Value: string)
  : IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Name := Value;
end;

function TControllerListBoxItensDefault.onClick(Value: TNotifyEvent)
  : IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.onClick := Value;
end;

function TControllerListBoxItensDefault.StyleLookup(Value: string)
  : IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.StyleLookup := Value;
end;

function TControllerListBoxItensDefault.Text(Value: string)
  : IControllerListBoxItensDefault;
begin
  Result := Self;
  FListBoxItem.Text := Value;
end;

end.

unit Menu.Controller.MenusFacade;

interface

uses
  Menu.Controller.Interfaces;

type

  TControllerMenusFacade = class(TInterfacedObject, IControllerListBoxFacade)
  private
    FListBox: IControllerListBoxFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerListBoxFacade;
    function ListBox: IControllerListBoxFactory;
  end;

implementation

{ TControllerMenusFacade }

uses Menu.Controller.ListBox.Factory;

constructor TControllerMenusFacade.Create;
begin

end;

destructor TControllerMenusFacade.Destroy;
begin

  inherited;
end;

function TControllerMenusFacade.ListBox: IControllerListBoxFactory;
begin
  FListBox := TControllerListBoxFactory.New;
  Result := FListBox;
end;

class function TControllerMenusFacade.New: IControllerListBoxFacade;
begin
  Result := Self.Create;
end;

end.

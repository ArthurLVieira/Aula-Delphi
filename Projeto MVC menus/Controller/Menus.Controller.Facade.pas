unit Menus.Controller.Facade;

interface

uses
  Menus.Controller.Interfaces, Menu.Controller.Conexoes.Interfaces,
  Menu.Controller.Entity.Interfaces, Menu.Controller.Interfaces;

type

  TControllerFacade = class(TInterfacedObject, IControllerFacade)
  private
    FConnexao: IControllerConexoesFacade;
    FEntity: IControllerEntityFacade;
    FMenus: IControllerListBoxFacade;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerFacade;
    function Conexao: IControllerConexoesFacade;
    function Entity: IControllerEntityFacade;
    function Menus: IControllerListBoxFacade;
  end;

implementation

{ TControllerFacade }

uses Menu.Controller.Conexoes.Facade, Menu.Controller.Entity.Facade,
  Menu.Controller.MenusFacade;

constructor TControllerFacade.Create;
begin

end;

destructor TControllerFacade.Destroy;
begin

  inherited;
end;

function TControllerFacade.Entity: IControllerEntityFacade;
begin
  FEntity := TControllerEntityFacade.New;
  Result := FEntity;
end;

function TControllerFacade.Menus: IControllerListBoxFacade;
begin
  FMenus := TControllerMenusFacade.New;
  Result := FMenus;
end;

class function TControllerFacade.New: IControllerFacade;
begin
  Result := Self.Create;
end;

function TControllerFacade.Conexao: IControllerConexoesFacade;
begin
  FConnexao := TControllerConexoesFacade.New;
  Result := FConnexao;
end;

end.

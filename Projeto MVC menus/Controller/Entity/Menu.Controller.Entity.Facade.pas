unit Menu.Controller.Entity.Facade;

interface

uses
  Menu.Controller.Entity.Interfaces;

type

  TControllerEntityFacade = class(TInterfacedObject, IControllerEntityFacade)
  private
    FEntity: IControllerEntityFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerEntityFacade;
    function Entity: IControllerEntityFactory;
  end;

implementation

uses
  Menu.Controller.Entity.Factory;

{ TControllerEntityFacade }

constructor TControllerEntityFacade.Create;
begin
  FEntity := TControllerEntityFactory.New;
end;

destructor TControllerEntityFacade.Destroy;
begin

  inherited;
end;

function TControllerEntityFacade.Entity: IControllerEntityFactory;
begin
  Result := FEntity;
end;

class function TControllerEntityFacade.New: IControllerEntityFacade;
begin
  Result := Self.Create;
end;

end.

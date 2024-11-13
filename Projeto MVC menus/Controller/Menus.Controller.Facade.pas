unit Menus.Controller.Facade;

interface

uses
  Menus.Controller.Interfaces;

type

  TControllerFacade = class(TInterfacedObject, IControllerFacade)
  private
    FConnexao: IControllerFacade;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerFacade;
    function Conexao: IControllerFacade;
  end;

implementation

{ TControllerFacade }

uses Menu.Controller.Conexoes.Facade;

function TControllerFacade.Conexao: IControllerFacade;
begin
  Result := FConnexao;
end;

constructor TControllerFacade.Create;
begin
  FConnexao := TControllerFacade.New;
end;

destructor TControllerFacade.Destroy;
begin

  inherited;
end;

class function TControllerFacade.New: IControllerFacade;
begin
  Result := Self.Create;
end;

end.

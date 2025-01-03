unit Menu.Controller.Conexoes.Facade;

interface

uses
  Menu.Controller.Conexoes.Interfaces;

type

  TControllerConexoesFacade = class(TInterfacedObject,
    IControllerConexoesFacade)
  private
    FConexao: IControllerConexoesFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFacade;
    function Conexoes: IControllerConexoesFactory;
  end;

implementation

{ TControllerConexoesFacade }

uses Menu.Controller.Conexoes.Factory;

constructor TControllerConexoesFacade.Create;
begin

end;

destructor TControllerConexoesFacade.Destroy;
begin

  inherited;
end;

function TControllerConexoesFacade.Conexoes: IControllerConexoesFactory;
begin
  FConexao := TControllerConexoesFactory.New;
  Result := FConexao;
end;

class function TControllerConexoesFacade.New: IControllerConexoesFacade;
begin
  Result := Self.Create;
end;

end.

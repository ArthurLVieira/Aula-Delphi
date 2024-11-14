unit Menu.Controller.Conexoes.Factory;

interface

uses Menu.Controller.Conexoes.Interfaces;

type

  TControllerConexoesFactory = class(TInterfacedObject,
    IControllerConexoesFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFactory;
  end;

implementation

{ TControllerConexoesFactory }


constructor TControllerConexoesFactory.Create;
begin

end;

destructor TControllerConexoesFactory.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFactory.New
  : IControllerConexoesFactory;
begin
  Result := Self.Create;
end;

end.

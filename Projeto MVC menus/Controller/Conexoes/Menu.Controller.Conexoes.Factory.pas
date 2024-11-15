unit Menu.Controller.Conexoes.Factory;

interface

uses Menu.Controller.Conexoes.Interfaces,
  Menu.Controller.Conexoes.FireDac.Interfaces,
  Menu.Controller.Conexoes.DataSet.Interfaces;

type

  TControllerConexoesFactory = class(TInterfacedObject,
    IControllerConexoesFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFactory;
    function FireDac: IControllerConexoesFireDacFactory;
    function DataSet: IControllerConexoesDataSet;
  end;

implementation

{ TControllerConexoesFactory }

uses Menu.Controller.Conexoes.FireDac.Factory, Menu.Controller.Conexoes.DataSet;


constructor TControllerConexoesFactory.Create;
begin

end;

function TControllerConexoesFactory.DataSet: IControllerConexoesDataSet;
begin
  Result :=TControllerConexoesDataSet.New;
end;

destructor TControllerConexoesFactory.Destroy;
begin

  inherited;
end;

function TControllerConexoesFactory.FireDac: IControllerConexoesFireDacFactory;
begin
  Result := TControllerConexoesFireDacFactory.New;
end;

class function TControllerConexoesFactory.New
  : IControllerConexoesFactory;
begin
  Result := Self.Create;
end;

end.

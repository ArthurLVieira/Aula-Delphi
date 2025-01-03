unit Menu.Controller.Conexoes.DataSet;

interface

uses
  Menu.Controller.Conexoes.DataSet.Interfaces, System.Classes,
  Menu.Model.Conexoes.DataSet.Interfaces;

type

  TControllerConexoesDataSet = class(TInterfacedObject,
    IControllerConexoesDataSet)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesDataSet;
    function Conexao(Conexao: TComponent): IModelConexoesDataSet;
  end;

implementation

{ TControllerConexoesDataSet }

uses Menu.Model.Conexoes.Facade;

constructor TControllerConexoesDataSet.Create;
begin

end;

function TControllerConexoesDataSet.Conexao(Conexao: TComponent)
  : IModelConexoesDataSet;
begin
  Result := TModelConexoesFacade.New.DataSet.DataSet(Conexao);
end;

destructor TControllerConexoesDataSet.Destroy;
begin

  inherited;
end;

class function TControllerConexoesDataSet.New: IControllerConexoesDataSet;
begin
  Result := Self.Create;
end;

end.

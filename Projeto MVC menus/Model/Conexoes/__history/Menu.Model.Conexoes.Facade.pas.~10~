unit Menu.Model.Conexoes.Facade;

interface

uses Menu.Model.Conexoes.Interfaces, Menu.Model.Conexoes.FireDac.Interfaces,
  Menu.Model.Conexoes.DataSet.Interfaces;

type

  TModelConexoesFacade = class(TInterfacedObject, IModelConexoesFacade)
  private
    FConexao: IModelConexaoFactory;
    FDataSet: IModelConexoesDataSetFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexoesFacade;
    function DataSet: IModelConexoesDataSetFactory;
    function Conexao: IModelConexaoFactory;
  end;

implementation

{ TModelConexoesFacade }

uses Menu.Model.Conexoes.DataSet.Factory, Menu.Model.Conexoes.Factory;



function TModelConexoesFacade.Conexao: IModelConexaoFactory;
begin
  FConexao := TModelConexaoFactory.New;
  Result := FConexao;
end;

constructor TModelConexoesFacade.Create;
begin

end;

function TModelConexoesFacade.DataSet: IModelConexoesDataSetFactory;
begin
  FDataSet := TModelConexoesFactoryDataSet.New;
  Result := FDataSet;
end;

destructor TModelConexoesFacade.Destroy;
begin

  inherited;
end;

class function TModelConexoesFacade.New: IModelConexoesFacade;
begin
  Result := Self.Create;
end;

end.

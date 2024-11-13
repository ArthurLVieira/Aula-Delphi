unit Menu.Model.Conexoes.Facade;

interface

uses Menu.Model.Conexoes.Interfaces;

type

  TModelConexoesFacade = class(TInterfacedObject, IModelConexoesFacade)
  private
    FConexao: IModelConexao;
    FDataSet: IModelDataSet;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelConexoesFacade;
    function iConexao: IModelConexao;
    function iDataSet: IModelDataSet;
  end;

implementation

{ TModelConexoesFacade }

uses Menu.Model.Conexoes.Factory.Conexao, Menu.Model.Conexoes.Factory.DataSet;

constructor TModelConexoesFacade.Create;
begin
  FConexao := TModelConexoesFactoryConexao.New.ConexaoFiredac;
  FConexao := TModelConexoesFactoryDataSet.New.DataSetFiredac(FConexao);
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

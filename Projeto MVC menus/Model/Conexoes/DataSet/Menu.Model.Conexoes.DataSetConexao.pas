unit Menu.Model.Conexoes.DataSetConexao;

interface

uses Menu.Model.Conexoes.Interfaces, FireDAC.Comp.Client, System.Classes;

type

  TModelConexoesTableFiredac = class(TInterfacedObject, IModelDataSet)
  private
    FTable: TFDTable;
  public
    constructor Create(Conexao: IModelConexao);
    destructor Destroy; override;
    class function New(Conexao: IModelConexao): IModelDataSet;
    function Open(aTable: string): IModelDataSet;
    function EndDataSet: TComponent;
  end;

implementation

{ TModelConexoesTableFiredac }

constructor TModelConexoesTableFiredac.Create(Conexao: IModelConexao);
begin
  FTable := TFDTable.Create(nil);
  FTable.Connection := (Conexao.EndConexao as TFDConnection);
end;

destructor TModelConexoesTableFiredac.Destroy;
begin
  FTable.Free;

  inherited;
end;

function TModelConexoesTableFiredac.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConexoesTableFiredac.New(Conexao: IModelConexao)
  : IModelDataSet;
begin
  Result := Self.Create(Conexao);
end;

function TModelConexoesTableFiredac.Open(aTable: string): IModelDataSet;
begin
  Result := Self;
  FTable.Open(aTable);
end;

end.

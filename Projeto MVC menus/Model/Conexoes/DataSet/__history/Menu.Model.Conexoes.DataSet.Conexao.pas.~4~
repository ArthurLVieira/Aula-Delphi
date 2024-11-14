unit Menu.Model.Conexoes.DataSet.Conexao;

interface

uses Menu.Model.Conexoes.DataSet.Interfaces, FireDAC.Comp.Client, System.Classes,
  Menu.Model.Conexoes.FireDac.Interfaces;

type

  TModelConexoesDataSet = class(TInterfacedObject, IModelConexoesDataSet)
  private
    FTable: TFDTable;
  public
    constructor Create(Conexao: IModelConexaoFireDac);
    destructor Destroy; override;
    class function New(Conexao: IModelConexaoFireDac): IModelConexoesDataSet;
    function Open(aTable: string): IModelConexoesDataSet;
    function EndDataSet: TComponent;
  end;

implementation

{ TModelConexoesDataSet }

constructor TModelConexoesDataSet.Create(Conexao: IModelConexaoFireDac);
begin
  FTable := TFDTable.Create(nil);
  FTable.Connection := (Conexao.EndConexao as TFDConnection);
end;

destructor TModelConexoesDataSet.Destroy;
begin
  FTable.Free;

  inherited;
end;

function TModelConexoesDataSet.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConexoesDataSet.New(Conexao: IModelConexaoFireDac)
  : IModelConexoesDataSet;
begin
  Result := Self.Create(Conexao);
end;

function TModelConexoesDataSet.Open(aTable: string): IModelConexoesDataSet;
begin
  Result := Self;
  FTable.Open(aTable);
end;

end.


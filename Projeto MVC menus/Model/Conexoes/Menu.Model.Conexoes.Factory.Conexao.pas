unit Menu.Model.Conexoes.Factory.Conexao;

interface

uses Menu.Model.Conexoes.Interfaces;

type

  TModelConexoesFactoryConexao = class(TInterfacedObject, IModelFactoryConexao)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IModelFactoryConexao;
    function ConexaoFiredac: IModelConexao;
  end;

implementation

{ TModelConexoesFactoryConexao }

uses Menu.Model.Conexoes.ConexaoFiredac;

function TModelConexoesFactoryConexao.ConexaoFiredac: IModelConexao;
begin
  Result := TModelConexaoFiredac.New;
end;

constructor TModelConexoesFactoryConexao.Create;
begin

end;

destructor TModelConexoesFactoryConexao.Destroy;
begin

  inherited;
end;

class function TModelConexoesFactoryConexao.New: IModelFactoryConexao;
begin
  Result := Self.Create;
end;

end.

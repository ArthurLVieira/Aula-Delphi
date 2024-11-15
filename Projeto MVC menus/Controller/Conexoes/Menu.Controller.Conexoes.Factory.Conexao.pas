unit Menu.Controller.Conexoes.Factory.Conexao;

interface

uses Menu.Controller.Conexoes.Interfaces;

type

  TControllerConexoesFactoryConexao = class(TInterfacedObject,
    IControllerConexoesFactoryConexao)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFactoryConexao;
    function ConexaoFireDac: IControllerConexoesFireDac;
  end;

implementation

{ TControllerConexoesFactoryConexao }

uses Menu.Controller.Conexoes.FireDac;


function TControllerConexoesFactoryConexao.ConexaoFireDac: IControllerConexoesFireDac;
begin
  Result := TControllerConexoesFireDac.New;
end;

constructor TControllerConexoesFactoryConexao.Create;
begin

end;

destructor TControllerConexoesFactoryConexao.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFactoryConexao.New
  : IControllerConexoesFactoryConexao;
begin
  Result := Self.Create;
end;

end.

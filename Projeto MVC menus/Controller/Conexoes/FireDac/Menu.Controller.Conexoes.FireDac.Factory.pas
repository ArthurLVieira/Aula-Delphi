unit Menu.Controller.Conexoes.FireDac.Factory;

interface

uses Menu.Controller.Conexoes.FireDac.Interfaces;

type

  TControllerConexoesFireDacFactory = class(TInterfacedObject,
    IControllerConexoesFireDacFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerConexoesFireDacFactory;
    function Conexao(Tipo: TTipoBanco): IControllerConexoesFireDac;
  end;

implementation

{ TControllerConexoesFireDacFactory }

uses Menu.Controller.Conexoes.FireDac.Postgres;

constructor TControllerConexoesFireDacFactory.Create;
begin

end;

destructor TControllerConexoesFireDacFactory.Destroy;
begin

  inherited;
end;

class function TControllerConexoesFireDacFactory.New
  : IControllerConexoesFireDacFactory;
begin
  Result := Self.Create;
end;

function TControllerConexoesFireDacFactory.Conexao(Tipo: TTipoBanco)
  : IControllerConexoesFireDac;
begin
  case Tipo of
    FireBird:
      ;
    Postegres:
      Result := TControllerConexoesFireDacPostegres.New;
  end;

end;

end.

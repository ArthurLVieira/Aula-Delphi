unit Menu.Model.Entity.Cliente;

interface

uses Menu.Model.Entity.Interfaces, System.Classes,
  Menu.Model.Conexoes.DataSet.Interfaces;

type

  TModelEntytiCliente = class(TInterfacedObject, IModelEntity)
  private
    FDataSet: IModelConexoesDataSet;
  public
    constructor Create(DataSet: IModelConexoesDataSet);
    destructor Destroy; override;
    class function New(DataSet: IModelConexoesDataSet): IModelEntity;
    function Listar: TComponent;
  end;

implementation

const
  FTABLENAME = 'CLIENTES';

  { TModelEntytiCliente }

constructor TModelEntytiCliente.Create(DataSet: IModelConexoesDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntytiCliente.Destroy;
begin

  inherited;
end;

function TModelEntytiCliente.Listar: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntytiCliente.New(DataSet: IModelConexoesDataSet)
  : IModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.

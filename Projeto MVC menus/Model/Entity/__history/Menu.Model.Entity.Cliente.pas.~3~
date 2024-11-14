unit Menu.Model.Entity.Cliente;

interface

uses Menu.Model.Entity.Interfaces, System.Classes,
  Menu.Model.Conexoes.Interfaces;

type

  TModelEntytiCliente = class(TInterfacedObject, IModelEntity)
  private
    FDataSet: IModelDataSet;
  public
    constructor Create(DataSet: IModelDataSet);
    destructor Destroy; override;
    class function New(DataSet: IModelDataSet): IModelEntity;
    function Listar: TComponent;
  end;

implementation

const
  FTABLENAME = 'CLIENTES';

  { TModelEntytiCliente }

constructor TModelEntytiCliente.Create(DataSet: IModelDataSet);
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

class function TModelEntytiCliente.New(DataSet: IModelDataSet): IModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.

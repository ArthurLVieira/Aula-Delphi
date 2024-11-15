unit Menu.Model.Conexoes.FireDac.Interfaces;

interface

uses
  System.Classes, FireDAC.Phys;

type

  IModelConexaoFireDac = interface;

  IModelConexaoParametrosFireDac = interface
    ['{7E96735F-B434-437F-8CE1-6AB48DF422DE}']
    function DataBase(Value: string): IModelConexaoParametrosFireDac;
    function UserName(Value: string): IModelConexaoParametrosFireDac;
    function Password(Value: string): IModelConexaoParametrosFireDac;
    function DriverID(Value: string): IModelConexaoParametrosFireDac;
    function Server(Value: string): IModelConexaoParametrosFireDac;
    function Port(Value: Integer): IModelConexaoParametrosFireDac;
    function EndParametros: IModelConexaoFireDac;
  end;

  IModelConexaoFireDac = interface
    ['{B4572A38-96B6-44C5-B767-90024477D9B2}']
    function EndConexao: TComponent;
    function Conectar: IModelConexaoFireDac;
    function Parametros: IModelConexaoParametrosFireDac;
  end;




implementation

end.

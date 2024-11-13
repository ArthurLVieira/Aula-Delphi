unit Menu.Model.Conexoes.Interfaces;

interface

uses
  System.Classes;

type

  IModelConexaoParametros = interface;

  IModelConexao = interface
    ['{B4572A38-96B6-44C5-B767-90024477D9B2}']
    function EndConexao: TComponent;
    function Conectar : IModelConexao;
    function Parametros: IModelConexaoParametros;
  end;

  IModelConexaoParametros = interface
    ['{7E96735F-B434-437F-8CE1-6AB48DF422DE}']
    function DataBase(Value: string): IModelConexaoParametros;
    function UserName(Value: string): IModelConexaoParametros;
    function Password(Value: string): IModelConexaoParametros;
    function DriverID(Value: string): IModelConexaoParametros;
    function Server(Value: string): IModelConexaoParametros;
    function Port(Value: Integer): IModelConexaoParametros;
    function EndParametros: IModelConexao;
  end;

  IModelDataSet = interface
    ['{48D27B1B-7FD9-4BA4-876F-5916DCF2D93A}']
    function Open(aTable: string): IModelDataSet;
    function EndDataSet: TComponent;
  end;

  IModelFactoryConexao = interface
    ['{4570B467-47DF-4C7F-AFF0-4D5EB535931F}']
    function ConexaoFiredac: IModelConexao;
  end;

  IModelFactoryDataSet = interface
    ['{15071BD9-5853-4134-8FF6-2CD0F4E49172}']
    function DataSetFiredac(Conexao: IModelConexao): IModelDataSet;
  end;

  IModelConexoesFacade = interface
    ['{B1A252C2-E2A5-4023-ABCD-160A91A0A35E}']
    function iConexao : IModelConexao;
    function iDataSet : IModelDataSet;
  end;

implementation

end.

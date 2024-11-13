unit Menu.Controller.Conexoes.Interfaces;

interface

uses Menu.Model.Conexoes.Interfaces;

type

  IControllerConexoesFireDac = interface;

    IControllerConexoesFactoryConexao = interface
      ['{CFA17375-6B55-4220-9454-ED32841B7934}']
      function ConexaoFireDac : IControllerConexoesFireDac;
  end;

  IControllerConexoesFireDac = interface
    ['{6DC140D0-75CF-45E0-A649-4CD7B5333179}']
    function ConexaoFireDacPostegres: IModelConexao;
    function ConexaoFireDacMySql: IModelConexao;
  end;

  IControllerFactoryDataSet = interface
    ['{3D9FC384-5854-4598-86B4-8E0DD2ADD674}']
    function DataSet(Conexao: IModelConexao): IModelDataSet;
  end;

implementation

end.

unit Menu.Controller.Conexoes.Interfaces;

interface

uses Menu.Controller.Conexoes.FireDac.Interfaces,
  Menu.Model.Conexoes.FireDac.Interfaces,
  Menu.Model.Conexoes.DataSet.Interfaces;

type

  IControllerConexoesFactory = interface
    ['{CFA17375-6B55-4220-9454-ED32841B7934}']
    function FireDac: IControllerConexoesFireDacFactory;
  end;

  IControllerConexoesFactoryDataSet = interface
    ['{3D9FC384-5854-4598-86B4-8E0DD2ADD674}']
    function DataSet(Conexao: IModelConexaoFireDac): IModelConexoesDataSet;
  end;

  IControllerConexoesFacade = interface
    ['{C407274F-21AD-4D26-A978-D201221C3B56}']
    function FireDac: IControllerConexoesFactoryConexao;
  end;

implementation

end.

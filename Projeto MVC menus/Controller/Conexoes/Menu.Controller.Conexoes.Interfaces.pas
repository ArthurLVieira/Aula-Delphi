unit Menu.Controller.Conexoes.Interfaces;

interface

uses System.Classes,
  FireDAC.Phys, Menu.Controller.Conexoes.FireDAC.Interfaces,
  Menu.Controller.Conexoes.DataSet.Interfaces;

type

  IControllerConexoesFactory = interface
    ['{CFA17375-6B55-4220-9454-ED32841B7934}']
    function FireDAC: IControllerConexoesFireDacFactory;
    function DataSet: IControllerConexoesDataSet;
  end;

  IControllerConexoesFacade = interface
    ['{C407274F-21AD-4D26-A978-D201221C3B56}']
    function Conexoes: IControllerConexoesFactory;

  end;

implementation

end.

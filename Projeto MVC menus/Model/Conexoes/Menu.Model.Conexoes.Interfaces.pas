unit Menu.Model.Conexoes.Interfaces;

interface

uses
  Menu.Model.Conexoes.FireDac.Interfaces;

type

  IModelConexoesFacade = interface
    ['{9BF3ED7B-ABCE-4459-A609-6564A5855C4B}']
    function DataSet: IModelConexaoFireDacFactory;
  end;

implementation

end.

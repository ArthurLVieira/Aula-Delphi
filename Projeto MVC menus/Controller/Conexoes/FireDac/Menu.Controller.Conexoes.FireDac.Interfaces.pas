unit Menu.Controller.Conexoes.FireDac.Interfaces;

interface

uses
  FireDAC.Phys, Menu.Model.Conexoes.FireDac.Interfaces;

type

  IControllerConexoesFireDacPostegres = interface
    ['{6DC140D0-75CF-45E0-A649-4CD7B5333179}']
    function Postegres: IModelConexaoFireDac;
  end;

  IControllerConexoesFireDacFactory = interface
    ['{6DC140D0-75CF-45E0-A649-4CD7B5333179}']
    function Postegres: IControllerConexoesFireDacPostegres;
  end;

implementation

end.
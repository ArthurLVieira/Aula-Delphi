unit Menus.Controller.Interfaces;

interface

uses Menu.Controller.Conexoes.Interfaces, Menu.Controller.Entity.Interfaces,
  Menu.Controller.Interfaces;

type

  IControllerFacade = interface
    ['{8AE9FD91-9471-4676-B521-7A35E6378D7C}']
    function Conexao: IControllerConexoesFacade;
    function Entity: IControllerEntityFacade;
    function Menus: IControllerListBoxFacade;
  end;

implementation

end.

unit Menu.Controller.Entity.Interfaces;

interface

uses
  Data.DB;

type

  IControllerEntity = interface
    ['{D103CD6D-F6FE-4733-BF15-DB1BF0093874}']
    function Lista(aDataSource: TDataSource): IControllerEntity;
  end;

  IControllerEntityFactory = interface
    ['{44E0B780-885C-4379-A4C4-A2E1E30A1565}']
    function Produtos: IControllerEntity;
    function Clientes: IControllerEntity;
  end;

  IControllerEntityFacade = interface
    ['{80AE8CF5-A643-426C-813C-E813C70D1327}']
    function Entity: IControllerEntityFactory;
  end;

implementation

end.

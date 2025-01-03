unit Menu.Controller.Interfaces;

interface

uses
  System.Classes, FMX.Types;

type
  IControllerListBoxItensDefault = interface;
  IControllerListBoxDefault = interface;

  IControllerListBoxItemForm = interface
    ['{9D8F48FA-F696-4F4F-8FE0-946884A31530}']
    function Show: TFmxObject;
  end;

  IControllerListBoxMenu = interface
    ['{7C67DB3D-0246-4F35-A5F4-D2FDC28BF23E}']
    procedure Exibir;
  end;

  IControllerListBoxItensFactory = interface
    ['{35EA4F92-00B2-4232-87DE-59D4F6645618}']
    function Default: IControllerListBoxItensDefault;
    function Produto: IControllerListBoxItemForm;
    function Cliente: IControllerListBoxItemForm;
  end;

  IControllerListBoxFactory = interface
    ['{C3705672-DDDD-4BC0-B3F0-786938CA4A20}']
    function Default(Container: TComponent): IControllerListBoxDefault;
    function Principal(Container: TComponent): IControllerListBoxMenu;
    function Produto(Container: TComponent): IControllerListBoxMenu;
    function Cliente(Container: TComponent): IControllerListBoxMenu;
  end;

  IControllerListBoxItensDefault = interface
    ['{EA8DBD64-AC82-4ECB-B185-CB072855B11B}']
    function Name(Value: string): IControllerListBoxItensDefault;
    function Text(Value: string): IControllerListBoxItensDefault;
    function StyleLookup(Value: string): IControllerListBoxItensDefault;
    function onClick(Value: TNotifyEvent): IControllerListBoxItensDefault;
    function Item: TFmxObject;
  end;

  IControllerListBoxDefault = interface
    ['{64020CFA-20FD-405F-BCC2-8428892F1305}']
    function Name(Value: string): IControllerListBoxDefault;
    function Align(Value: TAlignLayout): IControllerListBoxDefault;
    function ItemHeight(Value: Integer): IControllerListBoxDefault;
    function AddItem(Value: TFmxObject): IControllerListBoxDefault;
    function Lista: TFmxObject;
    procedure Exibir;
  end;

  IControllerListBoxFacade = interface
  ['{9AFE082D-066F-4439-8B69-E83F0BD86E3E}']
  function ListBox : IControllerListBoxFactory;

  end;

implementation

end.

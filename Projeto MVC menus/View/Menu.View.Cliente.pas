unit Menu.View.Cliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, System.Rtti, FMX.Grid.Style,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.DB, FMX.ScrollBox, FMX.Grid, Menu.Controller.Entity.Interfaces,
  Menu.Controller.Entity.Factory;

type
  TFrmCliente = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    StringGrid1: TStringGrid;
    DataSource1: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Layout2: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    FEntity : IControllerEntity;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.fmx}

uses Menu.Controller.ListBox.Factory, Menus.Controller.Facade;


procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  TControllerFacade.New.Menus.Menus.Cliente(Layout1).Exibir;


//  TControllerListBoxFactory.New.Cliente(Layout1).Exibir;
//  FEntity := TControllerEntityFactory.New.Clientes;
//  FEntity.Lista(DataSource1);

end;

initialization
  RegisterFmxClasses([TFrmCliente]);

end.

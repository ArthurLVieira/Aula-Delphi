unit Menu.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Types, FireDAC.Stan.Intf;
type
  TFrmPrincipal = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses Menu.Controller.ListBox.Factory;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  TControllerListBoxFactory.New.Principal(Layout1).Exibir;
end;

initialization

RegisterFmxClasses([TFrmPrincipal]);

end.

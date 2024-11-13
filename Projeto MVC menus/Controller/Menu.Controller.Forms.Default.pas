unit Menu.Controller.Forms.Default;

interface

uses
  System.SysUtils;

type

  TControllerFormsDefault = class
    class procedure CreateForm(ClassName: string);
  end;

implementation

uses
  FMX.Types, FMX.Forms, System.Classes;

{ TControllerFormsDefault }

class procedure TControllerFormsDefault.CreateForm(ClassName: string);
var
  ObjFMX: TFmxObjectClass;
  NewForm: TCustomForm;
begin
  ObjFMX := TFmxObjectClass(GetClass(ClassName));
  try
    NewForm := (ObjFMX.Create(nil) as TCustomForm);
    try
      NewForm.ShowModal;
    finally
      NewForm.Free;
    end;
  except
    raise Exception.Create('Objeto não existe!');
  end;

end;

end.

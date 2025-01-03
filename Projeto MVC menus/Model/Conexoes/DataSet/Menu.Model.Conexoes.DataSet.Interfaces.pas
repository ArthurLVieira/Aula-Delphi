unit Menu.Model.Conexoes.DataSet.Interfaces;

interface

uses
  System.Classes, Menu.Model.Conexoes.FireDac.Interfaces;

type


  IModelConexoesDataSet = interface
    ['{48D27B1B-7FD9-4BA4-876F-5916DCF2D93A}']
    function Open(aTable: string): IModelConexoesDataSet;
    function EndDataSet: TComponent;
  end;

  IModelConexoesDataSetFactory = interface
    ['{15071BD9-5853-4134-8FF6-2CD0F4E49172}']
    function DataSet(Conexao: TComponent): IModelConexoesDataSet;
  end;

implementation

end.

unit Menu.Controller.Conexoes.DataSet.Interfaces;

interface

uses
  Menu.Model.Conexoes.DataSet.Interfaces, System.Classes;

type

  IControllerConexoesDataSet = interface
    ['{3D9FC384-5854-4598-86B4-8E0DD2ADD674}']
    function Conexao(Conexao: TComponent): IModelConexoesDataSet;
  end;

implementation

end.

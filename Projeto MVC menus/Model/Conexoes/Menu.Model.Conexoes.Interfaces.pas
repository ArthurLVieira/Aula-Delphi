unit Menu.Model.Conexoes.Interfaces;

interface

uses
  FireDac.Phys,
  Menu.Model.Conexoes.DataSet.Interfaces,
  Menu.Model.Conexoes.FireDac.Interfaces;

type

  IModelConexaoFactory = interface;

  IModelConexoesFacade = interface
    ['{9BF3ED7B-ABCE-4459-A609-6564A5855C4B}']
    function DataSet: IModelConexoesDataSetFactory;
    function Conexao: IModelConexaoFactory;

  end;

  IModelConexaoFactory = interface
    ['{AD653E36-A584-490F-8949-334263E5433E}']
    function FireDac(DriverLink: TFDPhysDriverLink): IModelConexaoFireDac;
  end;

implementation

end.

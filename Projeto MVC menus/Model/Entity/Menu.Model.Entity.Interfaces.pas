unit Menu.Model.Entity.Interfaces;

interface

uses
  System.Classes, Menu.Model.Conexoes.DataSet.Interfaces;

type

  IModelEntity = interface
    ['{1DCC13B3-C74F-4E94-B4EF-A472D2C89DF0}']
    function Listar: TComponent;
  end;

  IModelEntityFactory = interface
    ['{E6DB243A-D0AB-415F-9D5A-11E421CAB839}']
    function Produtos(DataSet: IModelConexoesDataSet): IModelEntity;
    function Cliente(DataSet: IModelConexoesDataSet): IModelEntity;
  end;

implementation

end.

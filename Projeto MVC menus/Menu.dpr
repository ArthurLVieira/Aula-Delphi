program Menu;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menu.View.Principal in 'View\Menu.View.Principal.pas' {FrmPrincipal},
  Menu.Controller.Interfaces in 'Controller\Menus\Menu.Controller.Interfaces.pas',
  Menu.Model.Interfaces in 'Model\Menu.Model.Interfaces.pas',
  Menu.Controller.ListBox.Itens.Factory in 'Controller\Menus\Menu.Controller.ListBox.Itens.Factory.pas',
  Menu.Controller.ListBox.Factory in 'Controller\Menus\Menu.Controller.ListBox.Factory.pas',
  Menu.Controller.ListBox.Itens.Default in 'Controller\Menus\Menu.Controller.ListBox.Itens.Default.pas',
  Menu.Controller.ListBox.Default in 'Controller\Menus\Menu.Controller.ListBox.Default.pas',
  Menu.Controller.ListBox.Itens.Produto in 'Controller\Menus\Menu.Controller.ListBox.Itens.Produto.pas',
  Menu.Controller.ListBox.Principal in 'Controller\Menus\Menu.Controller.ListBox.Principal.pas',
  Menu.Controller.ListBox.Itens.Cliente in 'Controller\Menus\Menu.Controller.ListBox.Itens.Cliente.pas',
  Menu.View.Produtos in 'View\Menu.View.Produtos.pas' {FrmProdutos},
  Menu.View.Cliente in 'View\Menu.View.Cliente.pas' {FrmCliente},
  Menu.Controller.ListBox.Produto in 'Controller\Menus\Menu.Controller.ListBox.Produto.pas',
  Menu.Controller.ListBox.Cliente in 'Controller\Menus\Menu.Controller.ListBox.Cliente.pas',
  Menu.Controller.Forms.Default in 'Controller\Forms\Menu.Controller.Forms.Default.pas',
  Menu.Model.Conexoes.Interfaces in 'Model\Conexoes\Menu.Model.Conexoes.Interfaces.pas',
  Menu.Model.Conexoes.FireDac.Conexao in 'Model\Conexoes\FareDac\Menu.Model.Conexoes.FireDac.Conexao.pas',
  Menu.Model.Conexoes.DataSet.Conexao in 'Model\Conexoes\DataSet\Menu.Model.Conexoes.DataSet.Conexao.pas',
  Menu.Model.Conexoes.DataSet.Factory in 'Model\Conexoes\DataSet\Menu.Model.Conexoes.DataSet.Factory.pas',
  Menu.Model.Entity.Interfaces in 'Model\Entity\Menu.Model.Entity.Interfaces.pas',
  Menu.Model.Entity.Produtos in 'Model\Entity\Menu.Model.Entity.Produtos.pas',
  Menu.Model.Entity.Cliente in 'Model\Entity\Menu.Model.Entity.Cliente.pas',
  Menu.Model.Entity.Factory in 'Model\Entity\Menu.Model.Entity.Factory.pas',
  Menu.Controller.Conexoes.FireDac.Factory in 'Controller\Conexoes\FireDac\Menu.Controller.Conexoes.FireDac.Factory.pas',
  Menu.Controller.Conexoes.Interfaces in 'Controller\Conexoes\Menu.Controller.Conexoes.Interfaces.pas',
  Menu.Controller.Entity.Interfaces in 'Controller\Entity\Menu.Controller.Entity.Interfaces.pas',
  Menu.Controller.Entity.Produtos in 'Controller\Entity\Menu.Controller.Entity.Produtos.pas',
  Menu.Controller.Entity.Factory in 'Controller\Entity\Menu.Controller.Entity.Factory.pas',
  Menu.Controller.Entity.Clientes in 'Controller\Entity\Menu.Controller.Entity.Clientes.pas',
  Menu.Controller.Conexoes.Factory in 'Controller\Conexoes\Menu.Controller.Conexoes.Factory.pas',
  Menu.Model.Conexoes.Facade in 'Model\Conexoes\Menu.Model.Conexoes.Facade.pas',
  Menu.Controller.Entity.Facade in 'Controller\Entity\Menu.Controller.Entity.Facade.pas',
  Menu.Controller.Conexoes.Facade in 'Controller\Conexoes\Menu.Controller.Conexoes.Facade.pas',
  Menus.Controller.Interfaces in 'Controller\Menus.Controller.Interfaces.pas',
  Menus.Controller.Facade in 'Controller\Menus.Controller.Facade.pas',
  Menu.Controller.MenusFacade in 'Controller\Menus\Menu.Controller.MenusFacade.pas',
  Menu.Model.Conexoes.Factory in 'Model\Conexoes\Menu.Model.Conexoes.Factory.pas',
  Menu.Model.Conexoes.FireDac.Interfaces in 'Model\Conexoes\FareDac\Menu.Model.Conexoes.FireDac.Interfaces.pas',
  Menu.Model.Conexoes.DataSet.Interfaces in 'Model\Conexoes\DataSet\Menu.Model.Conexoes.DataSet.Interfaces.pas',
  Menu.Model.Facade in 'Model\Menu.Model.Facade.pas',
  Menu.Controller.Conexoes.FireDac.Interfaces in 'Controller\Conexoes\FireDac\Menu.Controller.Conexoes.FireDac.Interfaces.pas',
  Menu.Controller.Conexoes.FireDac.Postgres in 'Controller\Conexoes\FireDac\Menu.Controller.Conexoes.FireDac.Postgres.pas',
  Menu.Controller.Conexoes.DataSet in 'Controller\Conexoes\DataSet\Menu.Controller.Conexoes.DataSet.pas',
  Menu.Controller.Conexoes.DataSet.Interfaces in 'Controller\Conexoes\DataSet\Menu.Controller.Conexoes.DataSet.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.

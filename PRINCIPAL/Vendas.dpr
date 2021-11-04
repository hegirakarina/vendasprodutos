program Vendas;

uses
  Forms,
  UVenda in 'UVenda.pas' {FrmVenda},
  unFuncoes in '..\FUNCOES\unFuncoes.pas',
  UPesquisa in '..\FORMS\UPesquisa.pas' {FrmPesquisa},
  UDataModulo in '..\DM\UDataModulo.pas' {DataModulo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Vendas de Produtos';
  Application.CreateForm(TDataModulo, DataModulo);
  Application.CreateForm(TFrmVenda, FrmVenda);
  Application.Run;
end.

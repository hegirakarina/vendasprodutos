
{
 TITULO: PESQUISA CONSULTA PRODUTOS CADASTRADOS
 DESCRI??O: Projeto vendas de produtos, tabelas temporarias.
 DATA: 04/10/2021
 VERS?O: 1.0
 AUTOR: H?gira Karina - Analista de Sistema
 EMAIL: hegira.k@hotmail.com
 OBS.: Projeto disponibilizado no GitHub
}


unit UPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBClient;

type
  TFrmPesquisa = class(TForm)
    gbPesquisa: TGroupBox;
    DBGrid: TDBGrid;
    lblDescricao: TLabel;
    edtPesquisa: TEdit;
    Bevel1: TBevel;
    btnSelecionar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaChange(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    CodProduto: integer;
    QtdProduto: integer;
    { Public declarations }
  end;

var
  FrmPesquisa: TFrmPesquisa;

implementation

uses UDataModulo;

{$R *.dfm}

procedure TFrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  CASE Key of
    VK_RETURN  : Perform(WM_NEXTDLGCTL, 0, 0);
    VK_ESCAPE  : btnCancelar.Click;
  END;

end;

procedure TFrmPesquisa.edtPesquisaChange(Sender: TObject);
begin
  if Trim(edtPesquisa.Text) <> '' then
  begin
    DataModulo.cdsProdutos.Filter := 'DESCR_PROD like ' + QuotedStr(edtPesquisa.Text + '%');
    DataModulo.cdsProdutos.Filtered := True;
  end
  else
    DataModulo.cdsProdutos.Filtered := False;
end;

procedure TFrmPesquisa.edtPesquisaExit(Sender: TObject);
begin
  btnSelecionar.Click;
end;

procedure TFrmPesquisa.btnSelecionarClick(Sender: TObject);
begin
  if DataModulo.cdsProdutos.IsEmpty then
  begin
    MessageDlg('Selecione um produto.', mtWarning, [mbOk], 0);
    Exit;
  end;

  CodProduto := DataModulo.cdsProdutos.FieldByName('COD_PROD').AsInteger;
  QtdProduto := 0;

  Close;
end;

procedure TFrmPesquisa.btnCancelarClick(Sender: TObject);
begin
  CodProduto := 0;
  QtdProduto := 0;
  Close;
end;

procedure TFrmPesquisa.DBGridDblClick(Sender: TObject);
begin
  btnSelecionar.Click;
end;

procedure TFrmPesquisa.FormShow(Sender: TObject);
begin
  DataModulo.cdsProdutos.First;
end;

end.

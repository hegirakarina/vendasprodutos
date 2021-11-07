
{
 TITULO: DATAMODULE - TABELAS E FUNCOES INICIADOS ANTES DA APLICAÇÃO.
 DESCRIÇÃO: Projeto vendas de produtos, tabelas temporarias.
 DATA: 04/10/2021
 VERSÃO: 1.0
 AUTOR: Hégira Karina - Analista de Sistema
 EMAIL: hegira.k@hotmail.com
 OBS.: Projeto disponibilizado no GitHub
}


 unit UDataModulo;

interface

uses
  SysUtils, Forms, Classes, DB, DBClient;

type
  TDataModulo = class(TDataModule)
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    cdsVendas: TClientDataSet;
    dsVendas: TDataSource;
    cdsProdutosCOD_PROD: TIntegerField;
    cdsProdutosDESCR_PROD: TStringField;
    cdsProdutosVLRUNIT_PROD: TCurrencyField;
    cdsProdutosTOTAL_PROD: TAggregateField;
    cdsProdutosTOTAL_PROD2: TCurrencyField;
    cdsItensVenda: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    dsItensVenda: TDataSource;
    cdsItensVendaID_VENDA_ITEM: TIntegerField;
    cdsVendasID_VEN: TIntegerField;
    cdsVendasNMCLI_VEN: TStringField;
    cdsVendasDATA_VEN: TDateField;
    cdsVendasHORA_VEN: TTimeField;
    cdsVendasTOTAL_VEN: TFloatField;
    cdsVendasCODBAR_VEN: TStringField;
    cdsProdutosESTOQUE_PROD: TFloatField;
    cdsItensVendaQTDSAI_ITEM: TFloatField;
    cdsVendasSTATUS: TStringField;
    cdsVendasQTDITENS_VEN: TIntegerField;
    cdsVendasDTENTREGA_VEN: TDateField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ImportarTexto;
  public
    { Public declarations }
    Function CalcTotalItens(const Valor1, Valor2: Currency): Currency;
    Function CalcTotalGeral(const Valor1, Valor2: Currency): Currency;


  end;

{-- TRATA IMPORTACAO PRODUTOS - TABELA TEMP ---}
  TImportarTexto = Class
  LinhaEntrada: String;
    Delimitador: Char;
    Registro: TStringList;
    Constructor Create;
    Destructor Destroy;
    Procedure Clear;
    Procedure Execute;
  end;
{------------------}

var
  DataModulo: TDataModulo;

implementation

{$R *.dfm}


{ ---IMPORTAR TABELA TEMPORARIA DE PRODUTOS--- }
procedure TImportarTexto.Clear;
begin
  LinhaEntrada := '';
  Delimitador  := '|';
end;

constructor TImportarTexto.Create;
begin
Inherited Create;
  Registro := TStringList.Create;
end;

destructor TImportarTexto.Destroy;
begin
Inherited Destroy;
end;

procedure TImportarTexto.Execute;
var nPos: Integer;
begin
  Registro.Clear;
  nPos := 1;
  while (nPos > 0) do
  begin
    nPos := Pos('|', LinhaEntrada);
    if nPos>0 then
    begin
      Registro.Add(Copy(LinhaEntrada,1,nPos-1));
      LinhaEntrada := Copy(LinhaEntrada,nPos+1,Length(LinhaEntrada)-nPos);
    end;
  end;
  Registro.Add(LinhaEntrada);
end;

procedure TDataModulo.ImportarTexto;
var Importa: TImportarTexto;
    Arquivo: TStringList;
    nI, nX: Integer;
begin
  Arquivo:= TStringList.Create;
  if FileExists(ExtractFilePath(Application.ExeName) + 'PRODUTOS.TXT') then begin
     Arquivo.LoadFromFile(ExtractFilePath(Application.ExeName) + 'PRODUTOS.TXT');
  end
   else begin
     abort;
   end;

  Importa := TImportarTexto.Create;
  nX := Arquivo.Count - 1;

  For nI := 0 to nX do
  begin
    Importa.LinhaEntrada:= Arquivo.Strings[nI];
    Importa.Execute;
    cdsProdutos.Insert;
    cdsProdutosCOD_PROD.AsINTEGER := STRTOINT(Copy(TRIM(Importa.Registro.Text), 1, 2));
    cdsProdutosESTOQUE_PROD.ASINTEGER := STRTOINT(COPY( TRIM( StringReplace(Importa.Registro.Text, #13#10, '', [rfReplaceAll]) ), 3, 3));
    cdsProdutosVLRUNIT_PROD.ASCURRENCY := STRTOCURR(Copy(TRIM(StringReplace(Importa.Registro.Text, #13#10, '', [rfReplaceAll])), 7, 7));
    cdsProdutosDESCR_PROD.AsString := (Copy(TRIM(StringReplace(Importa.Registro.Text, #13#10, '', [rfReplaceAll])), 14, 24));
    cdsProdutos.Post;
  end;

  Importa.Free;
  Arquivo.Free;

end;
{----FIM TABELA_TEMP PRODUTO----}

procedure TDataModulo.DataModuleCreate(Sender: TObject);
begin
 cdsProdutos.CreateDataSet;
 cdsVendas.CreateDataSet;
 cdsItensVenda.CreateDataSet;
 ImportarTexto;

end;

Function TDataModulo.CalcTotalItens(const Valor1, Valor2: Currency): Currency;
begin
  Result := Valor1 * Valor2;
end;


Function TDataModulo.CalcTotalGeral(const Valor1, Valor2: Currency): Currency;
begin
  Result := Valor1 + Valor2;
end;



end.

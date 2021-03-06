
{
 TITULO: TELA PRINCIPAL/ MOVIMENTA??O.
 DESCRI??O: Projeto vendas de produtos, tabelas temporarias.
 DATA: 04/10/2021
 VERS?O: 1.0
 AUTOR: H?gira Karina - Analista de Sistema
 EMAIL: hegira.k@hotmail.com
 OBS.: Projeto disponibilizado no GitHub
}


unit UVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Buttons, DBClient, Grids, DBGrids,
  ComCtrls;

type
  TFrmVenda = class(TForm)
    StatusBar: TStatusBar;
    pnItens: TPanel;
    pnTop: TPanel;
    DBGrid: TDBGrid;
    pnItensButon: TPanel;
    Label4: TLabel;
    edtSubTotal: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    edtNMCliente: TEdit;
    Panel3: TPanel;
    Panel5: TPanel;
    btnNovo: TBitBtn;
    btnCancelar: TBitBtn;
    btnFinalizar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    edtValorVenda: TEdit;
    edtQtdVen: TEdit;
    Label2: TLabel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    gbPesquisa: TGroupBox;
    Label3: TLabel;
    edtPesquisa: TEdit;
    Panel6: TPanel;
    gbDetalheProduto: TGroupBox;
    lblCodigo: TLabel;
    sbPesquisaProduto: TSpeedButton;
    lblDescricao: TLabel;
    lblValor: TLabel;
    Label1: TLabel;
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    edtValor: TEdit;
    edtQtd: TEdit;
    gbQuantidade: TGroupBox;
    lblQuantidade: TLabel;
    lblTotal: TLabel;
    Bevel: TBevel;
    edtQuantidade: TEdit;
    edtTotal: TEdit;
    btnAdicionar: TBitBtn;
    lblEntrega: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    edtTotalVen: TEdit;
    edtEntrega: TEdit;
    imgCodBar: TImage;
    Label8: TLabel;
    procedure sbPesquisaProdutoClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure edtQuantidadeChange(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtNMClienteExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPesquisaChange(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LimparCampos;
    procedure LimparCamposVendas;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmVenda: TFrmVenda;
  id_venda   : integer;
  TotalGeral : Currency;
  QtdGeral   : integer;

implementation

uses UPesquisa, UDataModulo, unFuncoes;

{$R *.dfm}


procedure TFrmVenda.LimparCampos;
begin
  edtCodigo.Clear;
  edtDescricao.Clear;
  edtValor.Clear;
  edtQtd.Clear;
  edtQuantidade.Clear;
  edtTotal.Clear;
end;

procedure TFrmVenda.LimparCamposVendas;
begin
  edtNMCliente.Clear;
  edtTotalVen.Clear;
  edtValorVenda.Clear;
  edtQtdVen.Clear;
  edtEntrega.Clear;
  edtSubTotal.Clear;
end;


procedure TFrmVenda.sbPesquisaProdutoClick(Sender: TObject);
begin
  FrmPesquisa := TFrmPesquisa.Create(Self);
  FrmPesquisa.ShowModal;
  if (FrmPesquisa.CodProduto > 0) then
   begin
    edtCodigo.Text := IntToStr(FrmPesquisa.CodProduto);
    edtQuantidade.Text :=  IntToStr(FrmPesquisa.QtdProduto);
  end
   else begin
    LimparCampos;
  end;

  FreeAndNil(FrmPesquisa);
  DataModulo.cdsProdutos.Filtered := False;
end;

procedure TFrmVenda.btnAdicionarClick(Sender: TObject);
var
 totalVen : string;
begin

  if Trim(edtDescricao.Text) = '' then
  begin
    MessageDlg('Selecione um produto.', mtWarning, [mbOk], 0);
    edtCodigo.SetFocus;
    Exit;
  end;

  if (Trim(edtQuantidade.Text) = '') or (StrToInt(edtQuantidade.Text) = 0) then
  begin
    MessageDlg('Digite uma quantidade v?lida.', mtWarning, [mbOk], 0);
    edtQuantidade.SetFocus;
    Exit;
  end;

  with DataModulo.cdsItensVenda do
  begin

    Append;
    FieldByName('ID_VENDA_ITEM').AsString  := Format('%5.5d',[id_venda]);
    FieldByName('COD_ITEM').AsString       := edtCodigo.Text;
    FieldByName('DESCR_ITEM').AsString     := edtDescricao.Text;
    FieldByName('VLRUNIT_ITEM').AsString   := StringReplace(edtValor.Text, '.', '', [rfReplaceAll]);
    FieldByName('QTDSAI_ITEM').AsString    := StringReplace(edtQuantidade.Text, '.', '', [rfReplaceAll]);
    FieldByName('TOTAL_ITEM').AsString     := StringReplace(edtTotal.Text, '.', '', [rfReplaceAll]);
    Post;

   if DataModulo.cdsProdutos.Locate('COD_PROD', edtCodigo.Text, [loCaseInsensitive]) then
    begin
      DataModulo.cdsProdutos.Edit;
      DataModulo.cdsProdutos.FieldByName('ESTOQUE_PROD').asinteger:=
      DataModulo.cdsProdutos.FieldByName('ESTOQUE_PROD').asinteger -
      StrToIntDef(StringReplace(edtQuantidade.Text, '.', '', [rfReplaceAll]),0);
      DataModulo.cdsProdutos.Post;
    end;

   {---CALCULA TOTAL VENDA--}
   if DataModulo.cdsItensVenda.Locate('ID_VENDA_ITEM', id_venda, [loCaseInsensitive]) then
    begin
        totalVen         :=  (StringReplace(edtTotal.Text, '.', '', [rfReplaceAll]));
        TotalGeral       :=  DataModulo.CalcTotalGeral(TotalGeral, strtoCurr(totalVen));
        QtdGeral         := (QtdGeral + 1);

        edtTotalVen.Text :=  currtostr(TotalGeral);
        edtValorVenda.Text :=  currtostr(TotalGeral);
        edtSubTotal.Text :=  currtostr(TotalGeral);
        edtQtdVen.Text   :=  intToStr(QtdGeral);
    end;
   {--- FIM CALCULO---}


    LimparCampos;
    edtCodigo.SetFocus;
  end;


end;

procedure TFrmVenda.edtCodigoChange(Sender: TObject);
begin
   if trim(edtCodigo.Text) <> '' then
   begin
      with DataModulo.cdsProdutos do
        if Locate('COD_PROD', edtCodigo.Text, [loCaseInsensitive]) then
        begin
          edtDescricao.Text := FieldByName('DESCR_PROD').AsString;
          edtValor.Text     := FormatFloat('###,###,##0.00', FieldByName('VLRUNIT_PROD').AsFloat);
          edtQtd.Text       := inttostr(FieldByName('ESTOQUE_PROD').AsInteger);
          edtQuantidade.SetFocus;
        end;
   end;
end;

procedure TFrmVenda.edtQuantidadeChange(Sender: TObject);
var
  Total: Currency;
  Valor, Qtd : string;
begin


  if (Trim(edtValor.Text) = '') or (Trim(edtQuantidade.Text) = '') then
  begin
    edtTotal.Clear;
    Exit;
  end;

  Valor := StringReplace(edtValor.Text, '.', '', [rfReplaceAll]);
  Qtd := StringReplace(edtQuantidade.Text, '.', '', [rfReplaceAll]);

  {---Totaliza Itens--}
  Total := DataModulo.CalcTotalItens(StrToCurr(Valor), StrToCurr(Qtd));
  edtTotal.Text := FormatCurr('###,###,##0.00', Total);

end;

procedure TFrmVenda.btnCancelarClick(Sender: TObject);
begin

  IF Application.MessageBox('Deseja realmente CANCELAR a venda?','ATEN??O',
                              MB_YESNO + MB_ICONWARNING)=mrYes THEN
     begin

          if (DBGrid1.columns.items[0].field.text = '') then
           begin
              DataModulo.cdsItensVenda.First;
              with DataModulo.cdsItensVenda do
              begin
               if DataModulo.cdsItensVenda.Locate('ID_VENDA_ITEM', id_venda, [loCaseInsensitive]) then
                begin
                  DataModulo.cdsItensVenda.CancelUpdates;
                end;
                DataModulo.cdsItensVenda.Next;
              end;

           end else
            begin

              DataModulo.cdsItensVenda.Filter := 'ID_VENDA_ITEM = ' +dbgrid1.columns.items[0].field.text;
              DataModulo.cdsItensVenda.Filtered := True;
            end;

            btnNovo.Enabled          := True;
            btnFinalizar.Enabled     := False;
            btnCancelar.Enabled      := False;
            btnExcluir.Enabled       := True;
            btnFechar.Enabled        := True;
            edtNMCliente.Enabled     := False;
            gbDetalheProduto.Enabled := False;
            gbQuantidade.Enabled     := False;
            edtPesquisa.Enabled      := True;

            if DataModulo.cdsVendas.IsEmpty then
            begin
              btnExcluir.Enabled       := False;
              {Limpa campo codigo barras}
               if (imgCodBar.Picture.Graphic <> nil) and
                 (imgCodBar.Picture.Bitmap <> nil) then
                begin
                 imgCodBar.Picture.Graphic := nil;
                 imgCodBar.Picture.Bitmap := nil;
                end;
                LimparCampos;
                LimparCamposVendas;
            end else
             begin
               GerarCodigo('123550001221220000000001235822100',imgCodBar.Canvas);
             end;


           edtNMCliente.Text :=  dbgrid1.columns.items[3].field.text;
           edtEntrega.Text   :=  dbgrid1.columns.items[4].field.text;
           edtQtdVen.Text    :=  dbgrid1.columns.items[5].field.text;
           edtTotalVen.Text  :=  dbgrid1.columns.items[6].field.text;
           edtValorVenda.Text:=  dbgrid1.columns.items[6].field.text;
           edtSubTotal.Text  :=  dbgrid1.columns.items[6].field.text;
   end;


end;

procedure TFrmVenda.btnExcluirClick(Sender: TObject);
begin
  if DataModulo.cdsVendas.IsEmpty then
  begin
    MessageDlg('N?o h? registros para excluir.', mtWarning, [mbOK], 0);
    Exit;
  end;


   IF APPLICATION.MessageBox('Deseja realmente EXCLUIR a venda ?','ATEN??O',
                              MB_YESNO + MB_ICONWARNING)=mrYes THEN
    begin

          if dbgrid1.columns.items[0].field.text <> '' then
           begin
              with DataModulo.cdsItensVenda do
              begin
               if DataModulo.cdsItensVenda.Locate('ID_VENDA_ITEM', dbgrid1.columns.items[0].field.text, [loCaseInsensitive]) then
                begin
                  DataModulo.cdsItensVenda.Delete;
                end;
              end;
             end;


           DataModulo.cdsVendas.Delete;

          if dbgrid1.columns.items[0].field.text <> '' then
           begin
             DataModulo.cdsItensVenda.Filter := 'ID_VENDA_ITEM = ' +dbgrid1.columns.items[0].field.text;
             DataModulo.cdsItensVenda.Filtered := True;

             edtNMCliente.Text :=  dbgrid1.columns.items[3].field.text;
             edtEntrega.Text   :=  dbgrid1.columns.items[4].field.text;
             edtQtdVen.Text    :=  dbgrid1.columns.items[5].field.text;
             edtTotalVen.Text  :=  dbgrid1.columns.items[6].field.text;
             edtValorVenda.Text:=  dbgrid1.columns.items[6].field.text;
             edtSubTotal.Text  :=  dbgrid1.columns.items[6].field.text;
             btnExcluir.Enabled:= True;
          end else
           begin
             DataModulo.cdsItensVenda.CancelUpdates;
             btnExcluir.Enabled:= False;
            {Limpa campo codigo barras}
             if (imgCodBar.Picture.Graphic <> nil) and
               (imgCodBar.Picture.Bitmap <> nil) then
              begin
               imgCodBar.Picture.Graphic := nil;
               imgCodBar.Picture.Bitmap := nil;
              end;

             LimparCampos;
             LimparCamposVendas;
           end;

    end;



end;

procedure TFrmVenda.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmVenda.btnFinalizarClick(Sender: TObject);
var
 codbar: string;
 result: Boolean;
 dataEnt_ven: TDate;
begin

  IF Application.MessageBox('Deseja FINALIZAR a venda?','ATEN??O',
                              MB_YESNO + MB_ICONWARNING)=mrYes THEN
     begin

      if trim(edtNMCliente.Text) = '' then
       begin
          ShowMessage('Informe o nome do Cliente antes de finalizar!');
          edtNMCliente.SetFocus;
          exit;
       end;

      result := DataModulo.cdsItensVenda.Locate('ID_VENDA_ITEM', IntToStr(id_venda), []);
      if result= False then
      begin
        MessageDlg('Informe pelo menos um Item!', mtWarning, [mbOK], 0);
        edtCodigo.SetFocus;
        exit;
      end;

      {CODIGO DE BARRAS GERADO MERAMENTE ILUSTRATIVO}
      randomize;
      codbar:= Format('%9.9d',[id_venda+1])+inttostr(Round(random(99999)))+'00000000000'+inttostr(Round(random(99999)))
               +inttostr(Round(random(99999)));
      {---FIM CODBAR----}


      {---DATA ENTREGA- SE FOR FINAL DE SEMANA - CALCULE---}

        dataEnt_ven := (now+10);
        if (dayofweek(dataEnt_ven)) = 1 then //Domingo
         BEGIN
          dataEnt_ven := (now+11);
         END;

        if (dayofweek(dataEnt_ven)) = 7 then //Sabado
         BEGIN
          dataEnt_ven := (now+12);
         END;

       {----FIM DATA ENTREGA ----}

      DataModulo.cdsVendas.Append;
      DataModulo.cdsVendas.FieldByName('ID_VEN').AsString         := IntToStr(id_venda);
      DataModulo.cdsVendas.FieldByName('NMCLI_VEN').AsString      := edtNMCliente.Text;
      DataModulo.cdsVendas.FieldByName('DATA_VEN').AsString       := dateToStr(Date);
      DataModulo.cdsVendas.FieldByName('DTENTREGA_VEN').AsString  := dateToStr(dataEnt_ven);
      DataModulo.cdsVendas.FieldByName('HORA_VEN').AsString       := TimeToStr(Time);
      DataModulo.cdsVendas.FieldByName('TOTAL_VEN').AsString      := StringReplace(edtTotalVen.Text, '.', '', [rfReplaceAll]);
      DataModulo.cdsVendas.FieldByName('QTDITENS_VEN').AsString   := edtQtdVen.Text;
      DataModulo.cdsVendas.FieldByName('CODBAR_VEN').AsString     := codbar;
      DataModulo.cdsVendas.FieldByName('STATUS').AsString         := 'F';
      DataModulo.cdsVendas.Post;

      {-------Codigo de Barras----}
      GerarCodigo(codbar,imgCodBar.Canvas);


      LimparCampos;
      btnFinalizar.Enabled     := False;
      btnNovo.Enabled          := True;
      btnCancelar.Enabled      := False;
      btnExcluir.Enabled       := True;
      btnFechar.Enabled        := True;
      gbDetalheProduto.Enabled := False;
      gbQuantidade.Enabled     := False;
      edtNMCliente.Enabled     := False;
      edtPesquisa.Enabled      := True;
      edtEntrega.Text          := dateToStr(dataEnt_ven);


      MessageDlg('Venda finalizada.', mtInformation, [mbOk], 0);

  end else
   begin
    edtCodigo.SetFocus;
  end;

end;

procedure TFrmVenda.btnNovoClick(Sender: TObject);
begin

    LimparCamposVendas;
    id_venda             := id_venda+1;
    TotalGeral           := 0;
    QtdGeral             := 0;
    btnNovo.Enabled      := false;
    btnFinalizar.Enabled := True;
    btnCancelar.Enabled  := true;
    btnExcluir.Enabled   := False;
    btnFechar.Enabled    := False;
    edtNMCliente.Enabled := True;
    edtPesquisa.Enabled  := False;
    {Limpa campo codigo barras}
    if (imgCodBar.Picture.Graphic <> nil) and
       (imgCodBar.Picture.Bitmap <> nil) then
      begin
       imgCodBar.Picture.Graphic := nil;
       imgCodBar.Picture.Bitmap := nil;
      end;


    edtNMCliente.SetFocus;


    if id_venda > 0 then
    begin
      DataModulo.cdsItensVenda.Filter := 'ID_VENDA_ITEM = ' + intToStr(id_venda) ;
      DataModulo.cdsItensVenda.Filtered := True;
    end
    else
      DataModulo.cdsItensVenda.Filtered := False;


end;

procedure TFrmVenda.DBGrid1CellClick(Column: TColumn);
begin
 if dbgrid1.columns.items[0].field.text <> '' then
  begin
    DataModulo.cdsItensVenda.Filter := 'ID_VENDA_ITEM = ' +
                                        dbgrid1.columns.items[0].field.text;
    DataModulo.cdsItensVenda.Filtered := True;
    edtNMCliente.Text :=  dbgrid1.columns.items[3].field.text;
    edtEntrega.Text   :=  dbgrid1.columns.items[4].field.text;
    edtQtdVen.Text    :=  dbgrid1.columns.items[5].field.text;
    edtTotalVen.Text  :=  dbgrid1.columns.items[6].field.text;
    edtValorVenda.Text:=  dbgrid1.columns.items[6].field.text;
    edtSubTotal.Text  :=  dbgrid1.columns.items[6].field.text;
  end
  else begin
    DataModulo.cdsItensVenda.Filtered := False;
    LimparCampos;
    LimparCamposVendas;
  end;

end;

procedure TFrmVenda.DBGrid1TitleClick(Column: TColumn);
begin
  DataModulo.cdsVendaS.IndexFieldNames := Column.FieldName;
end;

procedure TFrmVenda.DBGridTitleClick(Column: TColumn);
begin
  DataModulo.cdsItensVenda.IndexFieldNames := Column.FieldName;
end;

procedure TFrmVenda.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F12 then
    begin
      FrmPesquisa := TFrmPesquisa.Create(Self);
      FrmPesquisa.ShowModal;
      if (FrmPesquisa.CodProduto > 0) then
       begin
        edtCodigo.Text := IntToStr(FrmPesquisa.CodProduto);
        edtQuantidade.Text :=  IntToStr(FrmPesquisa.QtdProduto);
      end else
       begin
        LimparCampos;
       end;

      FreeAndNil(FrmPesquisa);
      DataModulo.cdsProdutos.Filtered := False;
    end;
end;

procedure TFrmVenda.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #27 then
   begin
     btnFinalizarClick(self);
   end;

  if trim(edtQuantidade.Text) = '' then
   begin
     edtQuantidade.Text := '0';
   end;


  if trim(edtCodigo.Text) <> '' then
   begin
      if Key = #13 then
      begin
        Key := #0;
        sbPesquisaProduto.Click;
      end;
   end;

end;

procedure TFrmVenda.edtNMClienteExit(Sender: TObject);
begin

  if btnCancelar.Tag = 1 then
     begin
       btnCancelar.Tag := 0;
       abort;
     end;
     inherited;

 if edtNMCliente.Text <> '' then
   BEGIN
    gbDetalheProduto.Enabled := true;
    gbQuantidade.Enabled     := true;
    edtCodigo.SetFocus;
   END else
    begin
      btnCancelar.SetFocus;
      Exit;
    end;

end;

procedure TFrmVenda.edtPesquisaChange(Sender: TObject);
begin

     if btnExcluir.Enabled then
      begin

        if Trim(edtPesquisa.Text) <> '' then
        begin
          DataModulo.cdsVendas.Filter       := 'ID_VEN = ' + (edtPesquisa.Text);
          DataModulo.cdsVendas.Filtered     := True;
          edtNMCliente.Text :=  dbgrid1.columns.items[3].field.text;
          edtEntrega.Text   :=  dbgrid1.columns.items[4].field.text;
          edtQtdVen.Text    :=  dbgrid1.columns.items[5].field.text;
          edtTotalVen.Text  :=  dbgrid1.columns.items[6].field.text;
          edtValorVenda.Text:=  dbgrid1.columns.items[6].field.text;
          edtSubTotal.Text  :=  dbgrid1.columns.items[6].field.text;

        end
        else begin
          DataModulo.cdsVendas.Filtered := False;
          edtNMCliente.Text :=  dbgrid1.columns.items[3].field.text;
          edtEntrega.Text   :=  dbgrid1.columns.items[4].field.text;
          edtQtdVen.Text    :=  dbgrid1.columns.items[5].field.text;
          edtTotalVen.Text  :=  dbgrid1.columns.items[6].field.text;
          edtValorVenda.Text:=  dbgrid1.columns.items[6].field.text;
          edtSubTotal.Text  :=  dbgrid1.columns.items[6].field.text;
        end;


        if Trim(edtPesquisa.Text) <> '' then
        begin
          DataModulo.cdsItensVenda.Filter   := 'ID_VENDA_ITEM = ' +(edtPesquisa.Text);
          DataModulo.cdsItensVenda.Filtered := True;
        end
        else begin
          DataModulo.cdsItensVenda.Filter := 'ID_VENDA_ITEM = ' +dbgrid1.columns.items[0].field.text;
          DataModulo.cdsItensVenda.Filtered := True;
        end;

    end;


end;

procedure TFrmVenda.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    Key := #0;

    if DataModulo.cdsProdutos.Locate('COD_PROD', edtCodigo.Text, [loCaseInsensitive]) then
     begin
      if ((DataModulo.cdsProdutos.FieldByName('ESTOQUE_PROD').asinteger <
      StrToInt(edtQuantidade.Text)) and (Trim(edtQuantidade.Text) <> '')) then
       begin
         ShowMessage('N?o existe estoque suficiente para venda deste produto.');
         edtcodigo.SetFocus;
         Exit;
       end;
     end;


    btnAdicionar.Click;
  end;

end;

procedure TFrmVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 FrmVenda.Release;
 FrmVenda := nil;

end;

procedure TFrmVenda.FormCreate(Sender: TObject);
begin
  id_venda := 0;

end;

procedure TFrmVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  CASE Key of
    VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
    VK_F4    : btnNovo.OnClick(self);
    VK_F5    : btnFinalizar.OnClick(self);
    VK_F6    : btnCancelar.OnClick(self);
    VK_F7    : btnExcluir.OnClick(self);
  end;

end;

end.

object FrmVenda: TFrmVenda
  Left = 242
  Top = 119
  Caption = 'Venda de Produtos'
  ClientHeight = 565
  ClientWidth = 1289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 546
    Width = 1289
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Venda de Produtos'
        Width = 230
      end
      item
        Alignment = taCenter
        Width = 135
      end
      item
        Alignment = taCenter
        Width = 135
      end>
  end
  object pnItens: TPanel
    Left = 0
    Top = 24
    Width = 417
    Height = 522
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid: TDBGrid
      Left = 0
      Top = 0
      Width = 417
      Height = 454
      TabStop = False
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DataModulo.dsItensVenda
      FixedColor = 15263976
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnTitleClick = DBGridTitleClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'COD_ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Courier New'
          Title.Font.Style = []
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCR_ITEM'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Courier New'
          Title.Font.Style = []
          Width = 160
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDSAI_ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Courier New'
          Title.Font.Style = []
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRUNIT_ITEM'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Courier New'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_ITEM'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Courier New'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end>
    end
    object pnItensButon: TPanel
      Left = 0
      Top = 454
      Width = 417
      Height = 68
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Label4: TLabel
        Left = 10
        Top = 23
        Width = 171
        Height = 36
        Caption = 'SubTotal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtSubTotal: TEdit
        Left = 187
        Top = 19
        Width = 218
        Height = 44
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = 16776969
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 24
    Align = alTop
    Color = 14145280
    ParentBackground = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 417
    Top = 24
    Width = 872
    Height = 522
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 872
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 872
        Height = 60
        Align = alClient
        Caption = '* Informe o nome do Cliente  (Campo obrigat'#243'rio)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object edtNMCliente: TEdit
          Left = 11
          Top = 20
          Width = 847
          Height = 30
          CharCase = ecUpperCase
          Color = 3119103
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          MaxLength = 25
          ParentFont = False
          TabOrder = 0
          OnExit = edtNMClienteExit
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 60
      Width = 608
      Height = 462
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 160
        Width = 608
        Height = 302
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 49
          Width = 608
          Height = 253
          TabStop = False
          Align = alClient
          DataSource = DataModulo.dsVendas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          OnTitleClick = DBGrid1TitleClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_VEN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Courier New'
              Title.Font.Style = []
              Width = 45
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_VEN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Courier New'
              Title.Font.Style = []
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_VEN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Hora'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Courier New'
              Title.Font.Style = []
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NMCLI_VEN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Title.Caption = 'Cliente'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Courier New'
              Title.Font.Style = []
              Width = 158
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTENTREGA_VEN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Title.Caption = 'Entrega'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Courier New'
              Title.Font.Style = []
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDITENS_VEN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Qtd Itens'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Courier New'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_VEN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Total Venda'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Courier New'
              Title.Font.Style = []
              Width = 90
              Visible = True
            end>
        end
        object gbPesquisa: TGroupBox
          Left = 0
          Top = 0
          Width = 608
          Height = 49
          Align = alTop
          Caption = 'Pesquisar Venda '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label3: TLabel
            Left = 15
            Top = 24
            Width = 40
            Height = 13
            Caption = 'C'#243'digo :'
          end
          object edtPesquisa: TEdit
            Left = 61
            Top = 20
            Width = 116
            Height = 21
            CharCase = ecUpperCase
            Color = 3119103
            NumbersOnly = True
            TabOrder = 0
            OnChange = edtPesquisaChange
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 608
        Height = 160
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object gbDetalheProduto: TGroupBox
          Left = 0
          Top = 0
          Width = 608
          Height = 75
          Align = alTop
          Caption = 'Detalhes do Produto: '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lblCodigo: TLabel
            Left = 16
            Top = 25
            Width = 37
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object sbPesquisaProduto: TSpeedButton
            Left = 88
            Top = 39
            Width = 23
            Height = 22
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
              73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
              8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
              9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
              A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
              AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
              BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
              D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
              E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
              F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
              424242424242424242422B39180B42424242424242424242424243443C180B42
              4242424242424242424242444438180B42424242424242424242424244433918
              0A424242424242424242424242444335004201101A114242424242424242453D
              05072F343434291942424242424242221A2D34343437403E0442424242424206
              231C303437404146284242424242421B210F30373A414140310D42424242421F
              20032434373A3A37321342424242421D25030F2D37373737311042424242420D
              2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
              4227312D21252314424242424242424242420E141B1B42424242}
            OnClick = sbPesquisaProdutoClick
          end
          object lblDescricao: TLabel
            Left = 112
            Top = 25
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
          object lblValor: TLabel
            Left = 374
            Top = 25
            Width = 28
            Height = 13
            Caption = 'Valor:'
          end
          object Label1: TLabel
            Left = 499
            Top = 25
            Width = 22
            Height = 13
            Caption = 'Qtd:'
          end
          object edtCodigo: TEdit
            Left = 16
            Top = 40
            Width = 72
            Height = 21
            Hint = 'Tecle <ESC> para finalizar!'#13#10'Tecle F12 para abrir a pesquisa.'
            CharCase = ecUpperCase
            MaxLength = 3
            NumbersOnly = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnChange = edtCodigoChange
            OnKeyDown = edtCodigoKeyDown
            OnKeyPress = edtCodigoKeyPress
          end
          object edtDescricao: TEdit
            Left = 112
            Top = 40
            Width = 259
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            MaxLength = 40
            TabOrder = 1
          end
          object edtValor: TEdit
            Left = 373
            Top = 40
            Width = 121
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            MaxLength = 7
            ReadOnly = True
            TabOrder = 2
          end
          object edtQtd: TEdit
            Left = 496
            Top = 40
            Width = 50
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            MaxLength = 7
            ReadOnly = True
            TabOrder = 3
          end
        end
        object gbQuantidade: TGroupBox
          Left = 0
          Top = 75
          Width = 608
          Height = 78
          Align = alTop
          Caption = 'Quantidade do Produto: '
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object lblQuantidade: TLabel
            Left = 16
            Top = 24
            Width = 60
            Height = 13
            Caption = 'Quantidade:'
          end
          object lblTotal: TLabel
            Left = 97
            Top = 24
            Width = 28
            Height = 13
            Caption = 'Total:'
          end
          object Bevel: TBevel
            Left = 231
            Top = 18
            Width = 6
            Height = 50
            Shape = bsLeftLine
          end
          object edtQuantidade: TEdit
            Left = 16
            Top = 40
            Width = 75
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 3
            TabOrder = 0
            OnChange = edtQuantidadeChange
            OnKeyPress = edtQuantidadeKeyPress
          end
          object edtTotal: TEdit
            Left = 97
            Top = 40
            Width = 122
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clCream
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 7
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object btnAdicionar: TBitBtn
            Left = 243
            Top = 21
            Width = 182
            Height = 44
            Caption = 'Adicionar Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Courier New'
            Font.Style = []
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
              6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
              A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
              4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
              00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
              00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            TabOrder = 2
            OnClick = btnAdicionarClick
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 608
      Top = 60
      Width = 264
      Height = 462
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object Label2: TLabel
        Left = 17
        Top = 143
        Width = 98
        Height = 23
        Alignment = taRightJustify
        Caption = 'Tot. Itens...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblEntrega: TLabel
        Left = 6
        Top = 379
        Width = 130
        Height = 18
        Alignment = taRightJustify
        Caption = 'Data Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 2
        Top = 16
        Width = 113
        Height = 23
        Alignment = taRightJustify
        Caption = 'Valor Venda.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 47
        Width = 105
        Height = 23
        Alignment = taRightJustify
        Caption = 'Acr'#233'scimo..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 5
        Top = 112
        Width = 110
        Height = 23
        Alignment = taRightJustify
        Caption = 'Total Venda.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object imgCodBar: TImage
        Left = 6
        Top = 404
        Width = 253
        Height = 54
        Center = True
      end
      object Label8: TLabel
        Left = 15
        Top = 80
        Width = 100
        Height = 23
        Alignment = taRightJustify
        Caption = 'Desconto...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object btnNovo: TBitBtn
        Left = 6
        Top = 173
        Width = 252
        Height = 38
        Cursor = crHandPoint
        Caption = 'Nova Venda (F4)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFA46534A46534A46534A46534FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA46534E6
          CEB7E6CEB7A46534FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFA46534E6CEB7D9AD86A46534FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA46534E6
          CEB7D9AD86A46534FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          A46534A46534A46534A46534A46534D9AD86D9AD86A46534A46534A46534A465
          34A46534FF00FFFF00FFFF00FFFF00FFA46534E5CCB4DBB795DBB694DAB492DA
          B390D9AD86D8AA83D7A87FD7A67DE0BE9FA46534FF00FFFF00FFFF00FFFF00FF
          A46534E8D3C0E7D1BBE7D1BCE6CEB7E6CEB7E6CEB7E6CEB7E6CDB6E6CCB5E6CC
          B6A46534FF00FFFF00FFFF00FFFF00FFA46534A46534A46534A46534A46534E6
          CEB7E6CEB7A46534A46534A46534A46534A46534FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFA46534E6CEB7E6CEB7A46534FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA46534E6
          CEB7E6CEB7A46534FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFA46534E6CEB7E6CEB7A46534FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA46534A4
          6534A46534A46534FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        TabOrder = 0
        OnClick = btnNovoClick
      end
      object btnCancelar: TBitBtn
        Left = 6
        Top = 249
        Width = 252
        Height = 38
        Cursor = crHandPoint
        Caption = 'Cancelar (F6)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
          7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
          0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
          B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
          E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
          6DB2F9FEFEFFE9F3FD1E7FF00D73ED1474EB066BE90C6FE889B9F4E6F0FDB0D5
          FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF89BAF48FC0F92A86F110
          75EE1275EC1E79EC84B5F489BAF4FFFFFF58A5F5005EC70858AB137AE371B5FB
          FFFFFFB2D7FC278CF992C4FBDAEAFD318BF3388DF2D7E8FC87B8F50D71EAE6F0
          FDB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF419EFD3495FB298DF992C5FBE6
          F1FEE5F1FD88BCF71075EE0B70EBB4D2F8E6F3FF0E7BE9065AB02F8FF1B7DAFD
          FFFFFF419FFF3196FE3094FC469EFCF1F8FEF1F8FE3892F5187DF11378EF9FC9
          F7F0F8FF1A82EC055CB53693F0B8DAFEFFFFFF59ACFF3499FF55A9FEE8F3FF85
          BFFD83BDFCE7F2FE4498F61A7FF2D3E6FCD9EBFE117DE9095CB22689EDAFD6FD
          FFFFFFC3E1FF4AA4FFEDF6FF81C0FF3296FE2E93FC7BBAFDEBF5FE59A5F8E9F3
          FE99C9FA0773E10958ABFF00FF3994F0F1F8FFFBFDFF78BBFF61AFFF3499FF34
          99FF3398FF3095FD68B0FCF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
          CDE6FFF6FAFFFBFDFFC1DFFF58ABFF43A0FF49A3FF84C1FEFBFDFFFFFFFF78B9
          F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
          FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
          E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
          ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        TabOrder = 1
        OnClick = btnCancelarClick
      end
      object btnFinalizar: TBitBtn
        Left = 6
        Top = 211
        Width = 252
        Height = 38
        Cursor = crHandPoint
        Caption = 'Finalizar Venda (F5)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          AD5A59AA5454A24D4EAA9595C1C8C7CCCBCACECBCACAC8C7C6CAC9B79E9E9840
          41994444A65151FF00FFFF00FFBC7871CF6666D26868B95A5B9B8080BEA1A0E2
          D0CEFEF9F5FFFDFAF2F6F4D2B3B3962D2C993232C25B5BB05859FF00FFBB7871
          CB6565CE6767B85D5D9E7B7C9D4343B77675E7DFDDFDFBF9FEFFFDD9BAB9962E
          2E993333C05A5AAF5859FF00FFBB7871CB6565CE6667B85D5DA884839939399B
          3636CDBCBBF2F0EEFFFFFFE2C3C1962D2D983333C05A5AAF5859FF00FFBB7871
          CB6565CE6666B75C5CB28F8E9F4848943232A69A9AD5DBD8FAFFFEE6C9C8932B
          2B963030BF5959AF5859FF00FFBB7871CB6565CF6666BB5C5CC3908FC29695B3
          8686AA8D8EBAA2A1E1CAC8DCA9A9A33A3AA43E3EC35D5DAE5758FF00FFBB7871
          CC6566CB6464CB6464CB6364CC6767CD6767CC6464C85B5BC95E5ECA6161CC65
          65CD6666CF6868AC5657FF00FFBC7972B75351B25B57C68684D2A4A2D5ABAAD5
          AAA9D5ABAAD5A5A4D5A8A7D5AAA9D6AEACD39C9CCD6666AC5556FF00FFBC7871
          B14F4CE4CDCBFAF7F7F8F4F3F9F5F4F9F5F4F9F5F4F9F6F5F9F5F4F9F5F4FBFB
          FADEBEBDC45C5DAD5657FF00FFBC7871B3514EEBD7D6FCFBFAF7F0EFF7F1F0F7
          F1F0F7F1F0F7F1F0F7F1F0F6F1F0FBF9F8DEBCBBC35B5BAD5657FF00FFBC7871
          B3514EEBD7D4F0EFEFD8D5D4DAD7D7DAD7D7DAD7D7DAD7D7DAD7D7D8D5D5ECEC
          EBE0BDBCC25B5BAD5657FF00FFBC7871B3514EEBD7D5F3F1F1DEDAD9DFDBDBDF
          DBDBDFDBDBDFDBDBDFDBDBDDDAD9EEEEEEE0BDBCC35B5BAD5657FF00FFBC7871
          B3514EEAD7D5F5F4F3E4DFDEE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDFF2F1
          F0DFBDBBC35B5BAD5657FF00FFBC7871B3514EEBD7D6F1F0EFD9D5D5DAD8D7DA
          D8D7DAD8D7DAD8D7DAD8D7D8D5D5EDECEBE1BEBDC35B5BAD5657FF00FFBC7870
          B3514EE9D6D4FEFBFBFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FDFA
          F9DEBCBBC35C5CAD5657FF00FFFF00FFA8504CC9B6B5D3D5D4D1CECED1CECED1
          CECED1CECED1CECED1CECED1CECED3D4D4CBAEADA34D4EFF00FF}
        ParentFont = False
        TabOrder = 2
        OnClick = btnFinalizarClick
      end
      object btnExcluir: TBitBtn
        Left = 6
        Top = 287
        Width = 252
        Height = 38
        Cursor = crHandPoint
        Caption = 'Excluir(F7)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF0732DE0732DEFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FF0732DE
          0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
          DE0732DEFF00FFFF00FFFF00FF0732DE0732DD0732DE0732DEFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF
          0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DDFF
          00FF0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E307
          32E30534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F40534EF0533EBFF
          00FFFF00FF0434F40335F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FCFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB
          0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0335FBFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        TabOrder = 3
        OnClick = btnExcluirClick
      end
      object btnFechar: TBitBtn
        Left = 6
        Top = 325
        Width = 252
        Height = 38
        Cursor = crHandPoint
        Caption = 'Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666B96666BB
          6868693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          9A66669A6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66
          669A66669A6666FF00FFFF00FFFF00FF9A6666DE7374D77071D56F70D56D6EC7
          6A6D693334FEA2A3FCAFB0FABCBDF9C5C6F9C5C69A6666FF00FFFF00FFFF00FF
          9A6666E07778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB
          5BF9C5C69A6666FF00FFFF00FFFF00FF9A6666E57D7EE07A7BDF797ADF7778D0
          727569333442C46830CD6733CB6724CB60F9C5C69A6666FF00FFFF00FFFF00FF
          9A6666EA8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA
          5EF9C5C69A6666FF00FFFF00FFFF00FF9A6666F08788E98182EC9697FBDDDED8
          888A693334B8E1AC6BDC895DD58046D473F9C5C69A6666FF00FFFF00FFFF00FF
          9A6666F58C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFD
          D4F9C5C69A6666FF00FFFF00FFFF00FF9A6666FA9192F48E8FF28B8CF48C8DDC
          7F80693334FDF3D4FFFFDFFFFFDDFFFFE0F9C5C69A6666FF00FFFF00FFFF00FF
          9A6666FE9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFF
          DFF9C5C69A6666FF00FFFF00FFFF00FF9A6666FF9B9CFD9798FC9697FE9798E3
          8889693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C69A6666FF00FFFF00FFFF00FF
          9A6666FF9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFF
          DFF9C5C69A6666FF00FFFF00FFFF00FF9A66669A6666E98E8FFE999AFF9D9EEB
          8F90693334FBF0D2FDFCDCFDFCDAFDFCDCF9C5C69A6666FF00FFFF00FFFF00FF
          FF00FFFF00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66
          669A66669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A
          6666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        TabOrder = 4
        OnClick = btnFecharClick
      end
      object edtValorVenda: TEdit
        Left = 118
        Top = 10
        Width = 141
        Height = 29
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = 16776969
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 5
      end
      object edtQtdVen: TEdit
        Left = 118
        Top = 134
        Width = 141
        Height = 29
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = 16776969
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 6
      end
      object Edit1: TEdit
        Left = 118
        Top = 41
        Width = 141
        Height = 29
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = clSilver
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 7
        Text = '0,00'
      end
      object Edit2: TEdit
        Left = 118
        Top = 72
        Width = 141
        Height = 29
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = clSilver
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 8
        Text = '0,00'
      end
      object edtTotalVen: TEdit
        Left = 118
        Top = 103
        Width = 141
        Height = 29
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = 16776969
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 9
      end
      object edtEntrega: TEdit
        Left = 142
        Top = 378
        Width = 117
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = 3119103
        TabOrder = 10
      end
    end
  end
end

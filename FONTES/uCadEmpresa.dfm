object FrmEmpresa: TFrmEmpresa
  Left = 0
  Top = 0
  Caption = 'EMPRESAS'
  ClientHeight = 623
  ClientWidth = 1234
  Color = clSkyBlue
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 49
    Width = 1234
    Height = 574
    ActivePage = tsCadEmpresa
    Align = alClient
    TabOrder = 0
    OnChange = pcPrincipalChange
    object tsConsulta: TTabSheet
      Caption = 'CONSULTA'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 1226
        Height = 489
        Align = alClient
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = Button2Click
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 388
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_CADASTRO'
            Title.Caption = 'DATA DE CADASTRO'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1226
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label10: TLabel
          Left = 23
          Top = 21
          Width = 69
          Height = 13
          Caption = 'CONSULTAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 1112
          Top = 4
          Width = 110
          Height = 49
          Align = alRight
          Caption = 'CADASTRAR | F2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 1000
          Top = 4
          Width = 106
          Height = 49
          Align = alRight
          Caption = 'ALTERAR | F3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 888
          Top = 4
          Width = 106
          Height = 49
          Align = alRight
          Caption = 'EXCLUIR | F4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button3Click
        end
        object edtConsulta: TEdit
          Left = 98
          Top = 18
          Width = 223
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Button4: TButton
          Left = 327
          Top = 6
          Width = 81
          Height = 41
          Caption = 'BUSCAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button4Click
        end
        object rgOrdenacao: TRadioGroup
          Left = 448
          Top = 10
          Width = 275
          Height = 41
          Caption = 'Ordena'#231#227'o'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'CODIGO'
            'NOME DA EMPRESA')
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    object tsCadEmpresa: TTabSheet
      Caption = 'CADASTRO'
      ImageIndex = 1
      object Label1: TLabel
        Left = 22
        Top = 24
        Width = 50
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 23
        Top = 78
        Width = 33
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 23
        Top = 140
        Width = 64
        Height = 13
        Caption = 'ENDERE'#199'O'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 22
        Top = 197
        Width = 46
        Height = 13
        Caption = 'BAIRRO'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 23
        Top = 255
        Width = 47
        Height = 13
        Caption = 'CIDADE'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 536
        Top = 255
        Width = 13
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 23
        Top = 317
        Width = 29
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 22
        Top = 381
        Width = 120
        Height = 13
        Caption = 'DATA DE CADASTRO'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 22
        Top = 43
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 22
        Top = 97
        Width = 500
        Height = 21
        DataField = 'NOME'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 22
        Top = 159
        Width = 500
        Height = 21
        DataField = 'ENDERECO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 22
        Top = 216
        Width = 500
        Height = 21
        DataField = 'BAIRRO'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 22
        Top = 274
        Width = 500
        Height = 21
        DataField = 'CIDADE'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 528
        Top = 274
        Width = 30
        Height = 21
        DataField = 'UF'
        DataSource = dsEmpresa
        TabOrder = 5
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 22
        Top = 336
        Width = 264
        Height = 21
        DataField = 'CNPJ'
        DataSource = dsEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = DBEdit2KeyPress
      end
      object Panel3: TPanel
        Left = 0
        Top = 484
        Width = 1226
        Height = 62
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 7
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 1056
          Top = 4
          Width = 166
          Height = 54
          Cursor = crHandPoint
          Align = alRight
          Color = clWhite
          ParentBackground = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnClick = Panel4Click
          object Label8: TLabel
            AlignWithMargins = True
            Left = 53
            Top = 16
            Width = 92
            Height = 16
            Cursor = crHandPoint
            Caption = 'GRAVAR | F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = PopupMenu1
            OnClick = Panel4Click
          end
          object Image1: TImage
            Left = 8
            Top = 1
            Width = 48
            Height = 42
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              00300804000000FD0B310C000000E94944415478DAEDD6310E823014C6F18FD1
              09BC0BE2EEE2AD44568FE20D7473F438DEC0123458E86B5F5FDBC1E4BD848485
              FF2FA4B4A142E1A9145040010516D3E2804B39A0C51D5B9C319401A6FC381691
              0BD8997CF3B92F0090F93C80279F03F0E6D381403E1508E6D300463E0560E5E5
              40871B272F05D8791750E38A139E79F26BA0310F7778E1481251F925B0C1C32C
              DE3814B137F99A9F5FBF416F1E034944E75D6B401382BCFB2B7213A23CF599AE
              09619EDE07360169DEB7D17E0948F3FE9D3C13DF89CE878E0A9B10E4C367D14C
              88F29CC36E228479DE69DA9B4B98FFBB7F53051450C0396F76214B315D293414
              0000000049454E44AE426082}
            PopupMenu = PopupMenu1
            OnClick = Panel4Click
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 856
          Top = 4
          Width = 194
          Height = 54
          Cursor = crHandPoint
          Align = alRight
          Color = clWhite
          ParentBackground = False
          PopupMenu = PopupMenu1
          TabOrder = 1
          OnClick = Panel5Click
          object Label9: TLabel
            Left = 48
            Top = 18
            Width = 120
            Height = 16
            Cursor = crHandPoint
            Caption = 'CANCELAR | ESC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = PopupMenu1
            OnClick = Panel5Click
          end
          object Image2: TImage
            Left = 4
            Top = 2
            Width = 40
            Height = 38
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F987000001584944415478DAEDD6A14EC35018C5F13699
              98C063F620888AD9E92140F20404C15B4C4CE016923948008598C4EC9126119C
              266D52D196DE7BFF1F1F4BEE498EEEF9ADD9F695C599A7F41E9001DE0332C07B
              4006780FC800EF017F0D98A93BF5593DC25BD6EA95FA6805A8C7BFA8D7EA495D
              81887AFC6BF38CADFA6001786BC6B7A110DDF16D36C5C4371102B86F3E9D6E52
              117DE3BFD51BF58306D088E4F131000A818C8F05A422B0F1298058043A3E1510
              8AC0C71380A90893F114E037C4A5D578123086985B8DA70143886ED0F1168031
              043EDE0AD0F785AD431F802680A1F166081230F45369FA2628C0D8EFFCA2E0AF
              581430E54FCAE214470021FFB026881440CC798023620129B70D8A8801108719
              860805905725820801589CC4C98810C097BA04C78F21F6EA1D0DB8500F6A058E
              EF43BCABB7CD3350408BF8549FC0F15D4415323E06F0EF9201DEC900EF648077
              32C03B670FF8014A798E31E4A32A930000000049454E44AE426082}
            PopupMenu = PopupMenu1
            OnClick = Panel5Click
          end
        end
      end
      object DBEdit8: TDBEdit
        Left = 22
        Top = 400
        Width = 134
        Height = 21
        DataField = 'DATA_CADASTRO'
        DataSource = dsEmpresa
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1234
    Height = 49
    Align = alTop
    Caption = 'EMPRESAS'
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object qrEmpresa: TFDQuery
    AfterInsert = qrEmpresaAfterInsert
    Connection = Dm.Conexao
    SQL.Strings = (
      'SELECT * FROM EMPRESA')
    Left = 244
    Top = 256
    object qrEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrEmpresaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object qrEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object qrEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object qrEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object qrEmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object qrEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qrEmpresaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
  end
  object dsEmpresa: TDataSource
    DataSet = qrEmpresa
    Left = 348
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 628
    Top = 161
    object CANCELAR: TMenuItem
      Caption = 'CANCELAR'
      ShortCut = 27
      OnClick = Panel5Click
    end
    object GRAVAR1: TMenuItem
      Caption = 'GRAVAR'
      ShortCut = 112
      OnClick = Panel4Click
    end
    object CADASTRAR1: TMenuItem
      Caption = 'CADASTRAR'
      ShortCut = 113
      OnClick = Button1Click
    end
    object ALTERAR1: TMenuItem
      Caption = 'ALTERAR'
      ShortCut = 114
      OnClick = Button2Click
    end
    object CANCELAR1: TMenuItem
      Caption = 'CANCELAR'
      ShortCut = 115
      OnClick = Button3Click
    end
  end
end

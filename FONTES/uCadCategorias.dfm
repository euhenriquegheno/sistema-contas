object FrmCategorias: TFrmCategorias
  Left = 0
  Top = 0
  Caption = 'CATEGORIAS'
  ClientHeight = 562
  ClientWidth = 1025
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
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 50
    Width = 1025
    Height = 512
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 0
    OnChange = pcPrincipalChange
    object tsConsulta: TTabSheet
      Caption = 'CONSULTA'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1017
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 24
          Top = 19
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
        object edtConsulta: TEdit
          Left = 98
          Top = 16
          Width = 191
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Button4Click
        end
        object Button4: TButton
          Left = 295
          Top = 8
          Width = 75
          Height = 43
          Caption = 'BUSCAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button4Click
        end
        object rgOrdenacao: TRadioGroup
          Left = 408
          Top = 10
          Width = 233
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
            'CATEGORIA')
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 696
          Top = 4
          Width = 98
          Height = 49
          Align = alRight
          Caption = 'EXCLUIR | F4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button3Click
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 800
          Top = 4
          Width = 98
          Height = 49
          Align = alRight
          Caption = 'ALTERAR | F3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 904
          Top = 4
          Width = 109
          Height = 49
          Align = alRight
          Caption = 'CADASTRAR | F2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 57
        Width = 1017
        Height = 427
        Align = alClient
        DataSource = dsCategorias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CATEGORIA'
            Width = 600
            Visible = True
          end>
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'CADASTRO'
      ImageIndex = 1
      object Label2: TLabel
        Left = 40
        Top = 32
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
      object Label3: TLabel
        Left = 40
        Top = 101
        Width = 69
        Height = 13
        Caption = 'CATEGORIA'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 48
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsCategorias
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
        Left = 40
        Top = 120
        Width = 500
        Height = 21
        DataField = 'CATEGORIA'
        DataSource = dsCategorias
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 0
        Top = 432
        Width = 1017
        Height = 52
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 2
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 865
          Top = 4
          Width = 148
          Height = 44
          Cursor = crHandPoint
          Align = alRight
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          OnClick = Panel4Click
          ExplicitHeight = 52
          object Label9: TLabel
            AlignWithMargins = True
            Left = 56
            Top = 15
            Width = 81
            Height = 13
            Cursor = crHandPoint
            Caption = 'GRAVAR | F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = Panel4Click
          end
          object Image1: TImage
            Left = 5
            Top = -2
            Width = 47
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
            OnClick = Panel4Click
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 673
          Top = 4
          Width = 186
          Height = 44
          Cursor = crHandPoint
          Align = alRight
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          OnClick = Panel5Click
          ExplicitHeight = 52
          object Label10: TLabel
            Left = 60
            Top = 15
            Width = 104
            Height = 13
            Cursor = crHandPoint
            Caption = 'CANCELAR | ESC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = Panel5Click
          end
          object Image2: TImage
            Left = 5
            Top = -1
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
            OnClick = Panel5Click
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 50
    Align = alTop
    Caption = 'CATEGORIAS'
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object qrCategorias: TFDQuery
    AfterInsert = qrCategoriasAfterInsert
    Connection = Dm.Conexao
    SQL.Strings = (
      'SELECT * FROM CATEGORIAS')
    Left = 252
    Top = 232
    object qrCategoriasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrCategoriasCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Required = True
      Size = 100
    end
  end
  object dsCategorias: TDataSource
    DataSet = qrCategorias
    Left = 340
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 652
    Top = 210
    object GRAVAR1: TMenuItem
      Caption = 'GRAVAR'
      ShortCut = 112
      OnClick = Panel4Click
    end
    object CANCELAR1: TMenuItem
      Caption = 'CANCELAR'
      ShortCut = 27
      OnClick = Panel5Click
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
    object CANCELAR2: TMenuItem
      Caption = 'EXCLUIR'
      ShortCut = 115
      OnClick = Panel5Click
    end
  end
end

object FrmAgenda: TFrmAgenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Agenda'
  ClientHeight = 562
  ClientWidth = 1038
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1038
    Height = 49
    Align = alTop
    Caption = 'AGENDA'
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pcAgenda: TPageControl
    Left = 0
    Top = 49
    Width = 1038
    Height = 513
    ActivePage = tsAgenda
    Align = alClient
    TabOrder = 1
    OnChange = pcAgendaChange
    object tsAgenda: TTabSheet
      Caption = 'CONSULTA'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1030
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 13
          Top = 17
          Width = 67
          Height = 13
          Caption = 'LOCALIZAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 326
          Top = 16
          Width = 34
          Height = 13
          Caption = 'N'#205'VEL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 934
          Top = 4
          Width = 92
          Height = 41
          Align = alRight
          Caption = 'INCLUIR | F2'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 838
          Top = 4
          Width = 90
          Height = 41
          Align = alRight
          Caption = 'EXCLUIR | F3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 84
          Top = 12
          Width = 186
          Height = 21
          Date = 44170.000000000000000000
          Time = 0.447534583334345400
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cbNivel: TComboBox
          Left = 366
          Top = 12
          Width = 145
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = 'TODOS'
          OnChange = cbNivelChange
          Items.Strings = (
            'TODOS'
            'ALTO'
            'MEDIO'
            'BAIXO')
        end
        object Button3: TButton
          Left = 528
          Top = 3
          Width = 89
          Height = 41
          Caption = 'CONSULTAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button3Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 49
        Width = 1030
        Height = 436
        Align = alClient
        DataSource = dsConsulta
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
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LUGAR'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NIVEL'
            Width = 50
            Visible = True
          end>
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'CADASTRO'
      ImageIndex = 1
      object Label2: TLabel
        Left = 40
        Top = 57
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
        Left = 39
        Top = 101
        Width = 30
        Height = 13
        Caption = 'DATA'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 224
        Top = 101
        Width = 33
        Height = 13
        Caption = 'HORA'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 39
        Top = 152
        Width = 39
        Height = 13
        Caption = 'LUGAR'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 39
        Top = 211
        Width = 72
        Height = 13
        Caption = 'DESCRICAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 41
        Top = 315
        Width = 34
        Height = 13
        Caption = 'NIVEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object AGENDAMENTO: TLabel
        Left = 40
        Top = 23
        Width = 139
        Height = 18
        Caption = 'AGENDAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 39
        Top = 72
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsConsulta
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
        Top = 117
        Width = 134
        Height = 21
        DataField = 'DATA'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = DBEdit2Change
      end
      object DBEdit3: TDBEdit
        Left = 224
        Top = 117
        Width = 134
        Height = 21
        DataField = 'HORA'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = DBEdit3Change
      end
      object DBEdit4: TDBEdit
        Left = 40
        Top = 173
        Width = 134
        Height = 21
        DataField = 'LUGAR'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 39
        Top = 232
        Width = 473
        Height = 73
        DataField = 'DESCRICAO'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBComboBox1: TDBComboBox
        Left = 41
        Top = 336
        Width = 145
        Height = 21
        DataField = 'NIVEL'
        DataSource = dsConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Items.Strings = (
          'ALTO'
          'MEDIO'
          'BAIXO')
        ParentFont = False
        TabOrder = 5
      end
      object Panel3: TPanel
        Left = 0
        Top = 440
        Width = 1030
        Height = 45
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 6
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 906
          Top = 4
          Width = 120
          Height = 37
          Cursor = crHandPoint
          Align = alRight
          Caption = 'GRAVAR | F1'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          OnClick = Panel4Click
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 778
          Top = 4
          Width = 122
          Height = 37
          Cursor = crHandPoint
          Align = alRight
          Caption = 'CANCELAR | ESC'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          OnClick = Panel5Click
        end
      end
    end
  end
  object qrAgenda: TFDQuery
    AfterInsert = qrAgendaAfterInsert
    Connection = Dm.Conexao
    SQL.Strings = (
      'Select * from Agendamentos')
    Left = 356
    Top = 233
    object qrAgendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrAgendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object qrAgendaHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object qrAgendaLUGAR: TStringField
      FieldName = 'LUGAR'
      Origin = 'LUGAR'
      Size = 10
    end
    object qrAgendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qrAgendaNIVEL: TStringField
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
      Required = True
      Size = 5
    end
  end
  object dsConsulta: TDataSource
    DataSet = qrAgenda
    Left = 284
    Top = 233
  end
  object PopupMenu1: TPopupMenu
    Left = 452
    Top = 241
    object INCLUIR1: TMenuItem
      Caption = 'INCLUIR'
      ShortCut = 113
      OnClick = Button1Click
    end
    object EXCLUIR1: TMenuItem
      Caption = 'EXCLUIR'
      ShortCut = 114
      OnClick = Button2Click
    end
    object CANCELAR1: TMenuItem
      Caption = 'CANCELAR'
      ShortCut = 27
      OnClick = Panel5Click
    end
    object GRABAR1: TMenuItem
      Caption = 'GRAVAR'
      ShortCut = 112
      OnClick = Panel4Click
    end
  end
end

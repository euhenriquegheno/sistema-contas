object frmRelContasPagar: TfrmRelContasPagar
  Left = 0
  Top = 0
  Caption = 'RELATORIO CONTAS A PAGAR'
  ClientHeight = 140
  ClientWidth = 406
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 400
    Height = 87
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 372
    object Label1: TLabel
      Left = 22
      Top = 37
      Width = 350
      Height = 13
      Caption = 'DESEJA GERAR UM RELATORIO SIMPLIFICADO OU DETALHADO?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 96
    Width = 400
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 372
    object btnGerarRel: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 164
      Height = 33
      Align = alLeft
      Caption = 'SIMPLIFICADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnGerarRelClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 241
      Top = 4
      Width = 155
      Height = 33
      Align = alRight
      Caption = 'DETALHADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = 213
    end
    object Panel3: TPanel
      Left = 204
      Top = 0
      Width = 4
      Height = 39
      Color = clBlack
      ParentBackground = False
      TabOrder = 2
    end
  end
end

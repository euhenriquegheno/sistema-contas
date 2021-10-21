object FrmContasPagar: TFrmContasPagar
  Left = 0
  Top = 0
  Width = 1366
  Height = 758
  AutoScroll = True
  Caption = 'Contas a Pagar'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 94
    Top = 525
    Width = 104
    Height = 13
    Caption = 'FILTRAR POR BANCO'
  end
  object pcPrincipal: TPageControl
    Left = 0
    Top = 49
    Width = 1350
    Height = 670
    ActivePage = tsConsulta
    Align = alClient
    TabOrder = 0
    OnChange = pcPrincipalChange
    object tsConsulta: TTabSheet
      Caption = 'CONTAS A PAGAR'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1342
        Height = 57
        Align = alTop
        TabOrder = 0
        object btnExcluir: TButton
          AlignWithMargins = True
          Left = 768
          Top = 4
          Width = 92
          Height = 49
          Align = alRight
          Caption = 'EXCLUIR | F3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnExcluirClick
        end
        object btnSair: TButton
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 77
          Height = 49
          Align = alLeft
          Caption = 'SAIR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnSairClick
        end
        object btnIncluir: TButton
          AlignWithMargins = True
          Left = 866
          Top = 4
          Width = 90
          Height = 49
          Align = alRight
          Caption = 'INCLUIR | F2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnIncluirClick
        end
        object btnAlterar: TButton
          AlignWithMargins = True
          Left = 670
          Top = 4
          Width = 92
          Height = 49
          Align = alRight
          Caption = 'ALTERAR | F4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnAlterarClick
        end
        object pnEstornar: TPanel
          AlignWithMargins = True
          Left = 962
          Top = 4
          Width = 185
          Height = 49
          Cursor = crHandPoint
          Align = alRight
          Color = cl3DLight
          ParentBackground = False
          TabOrder = 4
          OnClick = pnEstornarClick
          OnMouseLeave = pnEstornarMouseLeave
          OnMouseMove = pnEstornarMouseMove
          object Image3: TImage
            Left = 14
            Top = 14
            Width = 35
            Height = 23
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              0016080300000096876E760000000467414D410000B18F0BFC61050000000173
              52474200AECE1CE900000147504C544500000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFFCDB417190000006B74
              524E530008BCF5CE791C07B0F2EFF6FCC63F02243231417BD8DF27B8C31B2E28
              D7FD771ADC3BCB19AEE54440F4ADE44EFE18AC4F46F8F0AB518AC017AAE6523A
              F96616A803CFB111A6A150639FEA2BA968E9D4C4C5BA92490B015AEB1D0A0C5C
              9E125DEC5EED9D609B1061EE9A5B6154726900000001624B47446CCC01303B00
              0000097048597300000741000007410107EB9922000001234944415478DA6364
              40058C8C9950D60C4646C65F40013405EC4061A8D284858C8C9F3014F0C314FC
              6762640C5BFDE313BA026420CE18BC8E11AE408AF129860A1946B8850C0A2F24
              19EF61A81009DF0155A0C2E8B69BF12686028DC77210052A6C8E0718AF60BA42
              E8873258811EA3CD6EAE0B589C690871831E9BF96EFED3D8FC61667A06A8C082
              D1E83CE3516CF236EF858026D8336A1F60C566BEE37329CD1B8C8C2A8A6A9B35
              5E89BFC39017666454DCA1B19551FF9F1DC3665FAC21B9C0F1C21306465F46D9
              CD868C7B31645D40A1B81A1867618C8CC227551931E3648DFF2A10C5C810C6F6
              E7AA01E3225C3106D419C6C97816B70A90D161DC8CA7CD1EEEC1AD80813FF4DF
              690BC659B81530F047301EB5B9BD07B702A08ADF172CA66153000051D941B56E
              1343F20000002574455874646174653A63726561746500323031372D30342D30
              335431383A32363A31362B30323A3030480DDE2D000000257445587464617465
              3A6D6F6469667900323031372D30342D30335431383A32363A31362B30323A30
              30395066910000004674455874736F66747761726500496D6167654D61676963
              6B20362E372E382D3920323031362D30362D31362051313620687474703A2F2F
              7777772E696D6167656D616769636B2E6F7267E6BF34B6000000187445587454
              68756D623A3A446F63756D656E743A3A50616765730031A7FFBB2F0000001874
              4558745468756D623A3A496D6167653A3A68656967687400353132C0D0505100
              000017744558745468756D623A3A496D6167653A3A5769647468003731376F92
              233D00000019744558745468756D623A3A4D696D657479706500696D6167652F
              706E673FB2564E00000017744558745468756D623A3A4D54696D650031343931
              32333637373619AFE60A00000013744558745468756D623A3A53697A6500382E
              39314B42425455C0760000005D744558745468756D623A3A5552490066696C65
              3A2F2F2E2F75706C6F6164732F6361726C6F7370726576692F4E7A346D4D5677
              2F313230362F313439313235343339352D72657475726E6261636B7265646F61
              72726F775F38323933342E706E67529F13580000000049454E44AE426082}
            OnClick = pnEstornarClick
            OnMouseLeave = pnEstornarMouseLeave
            OnMouseMove = pnEstornarMouseMove
          end
          object Label12: TLabel
            Left = 73
            Top = 17
            Width = 89
            Height = 13
            Cursor = crHandPoint
            Caption = 'ESTORNAR | F6'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            OnClick = pnEstornarClick
            OnMouseMove = pnEstornarMouseMove
            OnMouseLeave = pnEstornarMouseLeave
          end
        end
        object pnPagar: TPanel
          AlignWithMargins = True
          Left = 1153
          Top = 4
          Width = 185
          Height = 49
          Cursor = crHandPoint
          Align = alRight
          Color = cl3DLight
          ParentBackground = False
          TabOrder = 5
          OnClick = pnPagarClick
          OnMouseLeave = pnPagarMouseLeave
          OnMouseMove = pnPagarMouseMove
          object Label13: TLabel
            Left = 55
            Top = 17
            Width = 110
            Height = 13
            Cursor = crHandPoint
            Caption = 'PAGAR CONTA | F5'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            OnClick = pnPagarClick
            OnMouseMove = pnPagarMouseMove
            OnMouseLeave = pnPagarMouseLeave
          end
          object Image5: TImage
            Left = 9
            Top = 1
            Width = 40
            Height = 45
            Cursor = crHandPoint
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
              003008060000005702F9870000000467414D410000B18F0BFC61050000000173
              52474200AECE1CE900000006624B474400FF00FF00FFA0BDA793000000097048
              597300000EC400000EC401952B0E1B000009FB4944415478DAD59979505DD51D
              C7BFEF2E6F638B042411F320090448349090852509104356C0B8465B6D3B6AA3
              E3D871EB4C2756A74E3BDA8EFD436D75CC18AB55A76E493084442189541243B6
              12201B21A2AC0FC27BF01E6FE3F1967B5F7FE7C2238D423659D2336CEF72EE39
              BFCFF9FDCE6F394785FFF3A6BAD28EEBD61528FD65490E0B003A0446185015FC
              31C2642A955314552E490A60D7AE5DE303505858C87E85C972E0D76A8D708F20
              F01123BD1990650402C3D0B1FEF4D8EF93CFFBFDF2BB3CCF7D4AFD7CA5A5A563
              0B505454A40844C26F8A8D8BFC5376FE6C3E244C33E2700E7B2FFA5C4E5AE80B
              430779D8A35E4B3F4E1EEDB4D9ADFD0F729CAA74CC01D8EAFB7C9256AB134B8B
              7EB668C52D0BE268950724623FFD3E69E8336B564B379C4EC7D0C0242438811B
              E8AC1A98B0F670076A0F1AB720C06D54F101FC1488CB021414143080B090506D
              F9BD8F64674E9F15C3B4A1ACB0D3EEC69ECF6BE076F906573C407D7D90244959
              6D99EC3C3C5283F4A537436010834067EB4C3852D1BA8DA6BF9FFAF977EEDC39
              4E000F1340528C62121CAFC2A9EA5654EF6FC2DAF54B20AA05F8251F1C7D16C8
              017908707FF92964AE30207A6A88A229F67CC201AC3D2EB47DDF8DA395E7B024
              371DCB572D50FA3ADCBD0A40B0497E9934548BCE761392526F44D49410E843C4
              0904201332CC8846F10787D06B7663495E1AB273D3A0D688F0F9BDB03ABB142D
              0C0D4EA3F7B9BC385C7116A78FB7C2901081F46537E36CED0402DC3C3D0A5BDF
              3988DB566562DEC224653F48921FBD2E333C3EF78F271870FE38B8AF1EC6964E
              64AD8C9F78806DEF56615D510E926E8987C7E326D3B10E2B7CB0713C8763646E
              DF7FDB86ACFC0900205719A627807B1ECE5200B6BF7B082B0BB2109F1805A7DB
              0E49F65F720C06C0F64BD38401F8E5309D5E5DBEEAEE94CC98D870EC2D3E8B9C
              D5A9889F15AD9850B029018F5C273FE832AF1B00F226615ABD589E579890197D
              53082A777D8F9C35699891143304C0DCA3B5DB89DA234DC8CC4B82462F22982F
              5D3F0045099937DE148AAF4B1940EA4500ACB1A86CB3F6E186A85025605D4A03
              87BF6ADD46AFDEC77190768D7524BE5280A0267E98CC0D0750BBDFB87B6DB2E1
              AE7E49F23CFECA9BD70F401082D94F600413AA2700F7297BCFC685893F8F7BF4
              857296305E6B3E342A002A6E70D5E94B9264B8ECFD10D43C455DCDB000670880
              6B70C13029A4F95F279A5E0ED56ADEF1FAFC816B81181580A6735D88B9691228
              63C581F23368ACEFA4E82C6079E15C4CA3C8CDDA700059F13178BBBAB1ADD7E5
              2E1238AEF65A0A9C6B06C82580B8C41BC91CDAB0BFEC34D66E58008D5644F13F
              0F217F7D2A1ACF74C2D469C3F2028298198DA35F0F0250243E5363021A9C7822
              6F3E4ADAAD28AEACDE26CBF2431CC739AE560BD70EB03615D328A8ED2DA9C319
              CA73EEF865A652B9946DAFC1834FE4A2E1A41115A527B074D51C642E4FA25CA8
              0DCD8DAD989B3115F594CCA1DE8927F317C11D3B0D2FBF5FE26D68E97C9C3CD7
              3F78724B5703F1934DC8E795B067470DCC1D36C5ED8747E850F4C0624503E7DB
              AC0A002FA8E0EEEB475B4B1B0451050FD50F712D12161A0CD0CF9983AA93DFE2
              8DADE5F536A7FB0E51E01BC61580ED5D87AD8F4CA95DD90FC9736331697228BD
              2361605FFB71BEC3849AAA1698DAEDCA869E31731236444F41943E12BAD92990
              689ECDDBF7A1FC50DD07F4FFC74828F795428C8E175261A80656841EF49F64D7
              30771B51B9FB1C74DD1C6E5F990DB3C3859D95C77077620CB29267409B924225
              278FD6F33DF8CBFB25CEE60EF32F784EF5397785A63426712038B4C7E3427373
              33AA8A9BF044C63CDCBA6C31C89EF051D937E838FB2D1E5D9E0E3D0150D80647
              0B50F19FD3786BFBDE5A77BFF74E9EE79A261CA0AFCF8696662A3B77B6E2B739
              8B60589846AB2D60F73735387EA81A4FAECE40080320E19902FBBD7EBCFAD16E
              1CAC6D784E10F83FB3512E0731AA0081C140C60A781209AEFF0178366721E216
              CE53007611400D03589B8D90A459430761CC03551EAFC76B9F7C51D6E7F6ACD7
              A845CFB801B03D60313B70BCEA3B64AF48818EA2B0CB756980A70A97429F9838
              341703A83DD78C97DFDB71C0EA70ADD669D47DE3AA01AFC7AFA4D45153C2490B
              FCE501A8AAD327CCBC08A0F44035B6ECA8F8A4DFE37B40AB11A5710550066479
              D1E03387D38AF6362301B4E1D9650B7E0C703B01CCBC00E023D7FBD70F4B71B0
              AEE1376A517863C2363173A30E87054E572F5A1AAD38FBEFF3D894BF9836F1C8
              00CC0B19CD56FCE1EDADDD4693653501548F2940DEBA34B0332276F6F3C366B7
              F7C04E008DA77BF0DDB11EE4C44CC6BACC5484D386E5C9B418C0F1AA6A3C73F7
              6DD0C5C72BBB9F99CFBEA327F1E6D63D65FD5EDF5D14912F6BFFD70C50B1A311
              513191C8C89B85E8A91117F5F77AFBD1DD6384B1D9869ABD46DC9F6840D6DC44
              68A64F874AA35156FA5CDB79B4B7B463D9FCD9E0743AE53D8982DE6B1F7F898A
              63A79E26E15FE3791E252525A30C4035F15443180967472B9986D5ECC1CA3BE7
              0F98D260F4EDB59AD06BB3E09B2F5B911608C586CC39D0252529C2072B9CE059
              51306233A87693052F6ED9666E37F5E46B44B16E6C5209061017AE3C671BB5EE
              7007DC2E15D6DEBB0002E538EC4CD4EEEC42578715355F18F1547A3266A4A782
              8B8CBC70C63E4C63E6F365552D3617EF3B4071A480B252FB5800EC2113CA986A
              081F3AA4B559DDD8BFBB093ABD4649D2D8CA26A68692FBF4A2FF841B4FE7CE43
              F8DC5BA112C54BCEC134F1B74FCBB0E7F089E74551788909356A00EC7EC0EF93
              43B43AA12CB770E692D8F88821CFC326B69ADD94F3F895C82BCB7E78A55EB437
              F7C1600F57721D5D72B292EB8C2800519BAC36FC71CB764B637BD76AAD5A3C36
              AAE9F4C00587ACA2F46073C29CC91BE765C552B9C85F244070145992D0D5D541
              AED381B02E2D9EA15C276CF6EC11EFCC5863E6C392B8BF7F56B6978217AB075C
              A30A1084A0C59E43B6F97AC464ED22D286F0834B3E157DD488B41B7D3E321FB7
              1FA297C3260298B9381D814B6880A5DCAF93F9EC3B72F27724FC2B6C41C60480
              A50982C8DF20498159B40798EF0B220468CE48B59A7FF58E14437C4A54986262
              BB1B3B6088BE010FDDB70E9C563BECC51F13B6C7E6C00B9B3FF3501DB09E8257
              D9A8D7C45702472E544502BEB434397ED363B969D0B89CA86DEDC287754D5893
              BB082B325241C20D0B60B2D8F0FBB73E7577982D6B4441A81C7780200405A258
              12F29382ECF94BEECD990F2D99D29173AD283E7A1A1BF2B3B0E89604C55C8603
              789E008CD70100FB334D2D086F2D494BCA78A8280F11A17A586C4E68D402F4DA
              1F5FCD5E3700410866FB644EF3751AF18B1737DE13732BA5118395FDB017FBCC
              39992C763CF7E6C7EE7602504F24C00508D94095D4815F15E41812A64DB944C9
              390060B5BBF0F6E75FB9CDBDF63502CF4F3C00B5C9F4FD1E05A464F2F1F2E5DE
              610E80B2CF1E72028FD0C733130EC0EC9AB410E197643D0917B8820954E4FFBD
              F41EBB9FBDEA03DE51059888F65F5006578B3232E7A100000025744558746461
              74653A63726561746500323032302D30352D31315431383A33383A35352B3031
              3A3030F485E3D20000002574455874646174653A6D6F6469667900323032302D
              30352D31315431383A33383A35352B30313A303085D85B6E0000004674455874
              736F66747761726500496D6167654D616769636B20362E372E382D3920323031
              392D30322D30312051313620687474703A2F2F7777772E696D6167656D616769
              636B2E6F7267417BE2C800000018744558745468756D623A3A446F63756D656E
              743A3A50616765730031A7FFBB2F00000018744558745468756D623A3A496D61
              67653A3A68656967687400353132C0D0505100000017744558745468756D623A
              3A496D6167653A3A5769647468003531321C7C03DC0000001974455874546875
              6D623A3A4D696D657479706500696D6167652F706E673FB2564E000000177445
              58745468756D623A3A4D54696D65003135383932313837333596EB0C5D000000
              13744558745468756D623A3A53697A650032322E364B4242CB262EF300000059
              744558745468756D623A3A5552490066696C653A2F2F2E2F75706C6F6164732F
              35362F66773253596E422F323335352F7061795F62696C6C5F646F6C6C61725F
              6D6F6E65795F7061796D656E745F69636F6E5F3134333236312E706E6764A370
              890000000049454E44AE426082}
            OnClick = pnPagarClick
            OnMouseLeave = pnPagarMouseLeave
            OnMouseMove = pnPagarMouseMove
          end
        end
        object btnGerarRel: TButton
          AlignWithMargins = True
          Left = 87
          Top = 4
          Width = 130
          Height = 49
          Align = alLeft
          Caption = 'GERAR RELAT'#211'RIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnGerarRelClick
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 57
        Width = 1342
        Height = 585
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 289
          Top = 1
          Width = 1052
          Height = 547
          Align = alClient
          DataSource = dsContasPagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = btnAlterarClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_BOLETO'
              Title.Caption = 'N'#218'MERO BOLETO'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMPRESA_NOME'
              Title.Caption = 'EMPRESA'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FUNCIONARIO_NOME'
              Title.Caption = 'FUNCION'#193'RIO'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'VALOR - R$'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CATEGORIA_NOME'
              Title.Caption = 'CATEGORIA'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_VENCIMENTO'
              Title.Caption = 'DATA DE VENCIMENTO'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BANCO_PAGAMENTO'
              Title.Caption = 'BANCO'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMA_PAGAMENTO'
              Title.Caption = 'FORMA DE PAGAMENTO'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SITUACAO'
              Title.Caption = 'SITUA'#199#195'O'
              Width = 100
              Visible = True
            end>
        end
        object Panel10: TPanel
          Left = 1
          Top = 548
          Width = 1340
          Height = 36
          Align = alBottom
          TabOrder = 1
          object Label3: TLabel
            AlignWithMargins = True
            Left = 773
            Top = 4
            Width = 300
            Height = 28
            Align = alRight
            Caption = 'VALOR TOTAL DE CONTAS A PAGAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = 1
          end
          object Label16: TLabel
            Left = 757
            Top = -18
            Width = 262
            Height = 13
            Caption = 'Vai somar conforme a situa'#231#227'o que estiver selecionada'
          end
          object btnCalcular: TButton
            AlignWithMargins = True
            Left = 1256
            Top = 4
            Width = 80
            Height = 28
            Align = alRight
            Caption = 'CALCULAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnCalcularClick
          end
          object edtValorTotal: TMaskEdit
            AlignWithMargins = True
            Left = 1079
            Top = 4
            Width = 171
            Height = 28
            Align = alRight
            Alignment = taCenter
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Text = ''
            ExplicitTop = 6
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 288
          Height = 547
          Align = alLeft
          TabOrder = 2
          object Label6: TLabel
            Left = 75
            Top = 125
            Width = 133
            Height = 13
            Caption = 'FILTRAR POR EMPRESA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 62
            Top = 181
            Width = 162
            Height = 13
            Caption = 'FILTRAR POR FUNCION'#193'RIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 67
            Top = 237
            Width = 156
            Height = 13
            Caption = 'FILTRAR POR CATEGORIAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 86
            Top = 293
            Width = 121
            Height = 13
            Caption = 'FILTRAR POR BANCO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 107
            Top = 400
            Width = 62
            Height = 13
            Caption = 'SITUA'#199#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 44
            Top = 346
            Width = 200
            Height = 13
            Caption = 'FILTRAR POR NUMERO DO BOLETO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 35
            Top = 20
            Width = 210
            Height = 13
            Caption = 'FILTRAR POR DATA DE VENCIMENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 32
            Top = 42
            Width = 16
            Height = 13
            Caption = 'DE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 25
            Top = 84
            Width = 21
            Height = 13
            Caption = 'AT'#201
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object lbRegistros: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 530
            Width = 280
            Height = 13
            Align = alBottom
            Alignment = taCenter
            Caption = '0 Registros...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 85
          end
          object edtConsulta: TEdit
            Left = 35
            Top = 144
            Width = 217
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyPress = edtConsultaKeyPress
          end
          object edtConsultaFuncionario: TEdit
            Left = 35
            Top = 200
            Width = 217
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edtConsultaCategoria: TEdit
            Left = 35
            Top = 256
            Width = 217
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edtConsultaBanco: TEdit
            Left = 35
            Top = 312
            Width = 218
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object ComboBox1: TComboBox
            Left = 47
            Top = 419
            Width = 177
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ItemIndex = 0
            ParentFont = False
            TabOrder = 4
            Text = 'TODOS'
            OnChange = ComboBox1Change
            Items.Strings = (
              'TODOS'
              'ABERTO'
              'QUITADO')
          end
          object btnBuscar: TButton
            Left = 86
            Top = 458
            Width = 111
            Height = 34
            Caption = 'BUSCAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btnBuscarClick
          end
          object DateTimePicker1: TDateTimePicker
            Left = 54
            Top = 39
            Width = 182
            Height = 21
            Date = 44085.000000000000000000
            Time = 0.735156076385465000
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnChange = DateTimePicker1Change
          end
          object DateTimePicker2: TDateTimePicker
            Left = 54
            Top = 81
            Width = 182
            Height = 21
            Date = 44254.000000000000000000
            Time = 0.596752361110702600
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnChange = DateTimePicker2Change
          end
          object edtNumeroBoleto: TEdit
            Left = 35
            Top = 365
            Width = 218
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
        end
      end
    end
    object tsCadastro: TTabSheet
      Caption = 'INCLUIR'
      ImageIndex = 1
      object Label1: TLabel
        Left = 38
        Top = 44
        Width = 52
        Height = 14
        Caption = 'CODIGO'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 37
        Top = 264
        Width = 41
        Height = 14
        Caption = 'VALOR'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 37
        Top = 324
        Width = 117
        Height = 14
        Caption = 'DATA VENCIMENTO'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 37
        Top = 498
        Width = 64
        Height = 14
        Caption = 'SITUACAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 37
        Top = 174
        Width = 52
        Height = 14
        Caption = 'CODIGO'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 167
        Top = 174
        Width = 58
        Height = 14
        Caption = 'EMPRESA'
        FocusControl = DBEdit7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Image6: TImage
        Left = 777
        Top = 165
        Width = 33
        Height = 35
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          00240806000000E10098980000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C0000032269545874584D4C3A636F6D2E
          61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EF
          BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
          223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
          3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
          352E332D633031312036362E3134353636312C20323031322F30322F30362D31
          343A35363A32372020202020202020223E203C7264663A52444620786D6C6E73
          3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
          32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365
          526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F
          746F73686F7020435336202857696E646F7773292220786D704D4D3A496E7374
          616E636549443D22786D702E6969643A37394143393346393842303631314541
          383434393941383037414241373933372220786D704D4D3A446F63756D656E74
          49443D22786D702E6469643A3739414339334641384230363131454138343439
          394138303741424137393337223E203C786D704D4D3A4465726976656446726F
          6D2073745265663A696E7374616E636549443D22786D702E6969643A37394143
          3933463738423036313145413834343939413830374142413739333722207374
          5265663A646F63756D656E7449443D22786D702E6469643A3739414339334638
          384230363131454138343439394138303741424137393337222F3E203C2F7264
          663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D
          706D6574613E203C3F787061636B657420656E643D2272223F3ED62BF6030000
          03064944415478DAED975B884D6114C7D71E97312EB98D4B79989AE4414C2EF1
          401E3C79923C604A31721B72BF1B4C9234C648118A98E3F6A2944BB96672C98B
          94F2240CA291A63092C11C1CFF7F6B9DDA8E3367F63EDF3E91CEAA5FE7CCDE67
          EFEFF7DDD6B7C64B2412F22F8597170A2BE4795E36EFE9044AC0703008FC048D
          E021F8D4DE43E906C355A810CC04EB40599AFB5FC02550637239151A030E8009
          017EFB19D483B5A02D174293C17E30C277AD05DC072FC110300E0CF4DDFF0EAE
          D8887E8D52682488D90831DE813A7050FE5C2F63C13E30C9FEA6C849B014FC88
          42A8BB355001BA82C76019B899E199DE6015A80605263D1D3424D21885151A2F
          BA16B89B3E802A70447457658A01368A733832E0069886B6DB527F184688BDDB
          02D6803EE02CD8045E48B028050F405FD1DD5786B69FB908F502A7D8337BE156
          70D8BE078962701C4C05DF4025DA8EB908F513DD259CB6B76031B8987CCC3E53
          D70413267355AB7568BD75843B6E27DADEE122C41E5E13DD5D9CA6B9E0AE4F26
          9D10177E4FF0DE3E37F8846AD076B58B10E7FE82E8167E03E681EB81264BA3BF
          E814CF104D8E55687BAF8B5091BD9023C335B04D34F7B4061462B26C00C3ECF9
          72B47DDE4588C175B31D0C0677C072F028800CA78EB9E734E82C9A4C87A2ED16
          57219EE8E74433705C34B7D48A1E1B99A2D446A7C446E710D888B6E3AE428C95
          60B3689911B797EF02CDEDFC9E53C4ED3ED1FEE6E88C06AFA33ACB2872024CF1
          5D7B028E89961ACF45172DB339D7DB42D144CA6076AF104B17AE42CC27BBC122
          FBFE5174A177EBA8073E19961FF5C90B2E425C88B5D65BE613165BB3C128D132
          A43883081BE091B11ADCFBED469642A9320C6E57665D9E453C38678172D1AA91
          1999876D13B80DCE80AB694DB31062EADF63D3D4C3AE5D162D279E0699A74C11
          56A8C0642A45EB20B19EB2FE697495092B44993A9329B25B3CC79648F0722332
          A12EA2BB896566A15D6641B500BC8A4A268CD07CD1332A29C3F294F9A4294A99
          30429CA298E87F07B744775073876FCFA1103F28B5021C15AD6572128184FE76
          E485F242FF9DD02F0F5A53C8FB8FA8370000000049454E44AE426082}
        OnClick = Image6Click
      end
      object Label19: TLabel
        Left = 37
        Top = 230
        Width = 52
        Height = 14
        Caption = 'CODIGO'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 160
        Top = 230
        Width = 89
        Height = 14
        Caption = 'FUNCION'#193'RIO'
        FocusControl = DBEdit8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Image8: TImage
        Left = 777
        Top = 223
        Width = 33
        Height = 35
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          00240806000000E10098980000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C0000032269545874584D4C3A636F6D2E
          61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EF
          BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
          223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
          3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
          352E332D633031312036362E3134353636312C20323031322F30322F30362D31
          343A35363A32372020202020202020223E203C7264663A52444620786D6C6E73
          3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
          32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365
          526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F
          746F73686F7020435336202857696E646F7773292220786D704D4D3A496E7374
          616E636549443D22786D702E6969643A37394143393346393842303631314541
          383434393941383037414241373933372220786D704D4D3A446F63756D656E74
          49443D22786D702E6469643A3739414339334641384230363131454138343439
          394138303741424137393337223E203C786D704D4D3A4465726976656446726F
          6D2073745265663A696E7374616E636549443D22786D702E6969643A37394143
          3933463738423036313145413834343939413830374142413739333722207374
          5265663A646F63756D656E7449443D22786D702E6469643A3739414339334638
          384230363131454138343439394138303741424137393337222F3E203C2F7264
          663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D
          706D6574613E203C3F787061636B657420656E643D2272223F3ED62BF6030000
          03064944415478DAED975B884D6114C7D71E97312EB98D4B79989AE4414C2EF1
          401E3C79923C604A31721B72BF1B4C9234C648118A98E3F6A2944BB96672C98B
          94F2240CA291A63092C11C1CFF7F6B9DDA8E3367F63EDF3E91CEAA5FE7CCDE67
          EFEFF7DDD6B7C64B2412F22F8597170A2BE4795E36EFE9044AC0703008FC048D
          E021F8D4DE43E906C355A810CC04EB40599AFB5FC02550637239151A030E8009
          017EFB19D483B5A02D174293C17E30C277AD05DC072FC110300E0CF4DDFF0EAE
          D8887E8D52682488D90831DE813A7050FE5C2F63C13E30C9FEA6C849B014FC88
          42A8BB355001BA82C76019B899E199DE6015A80605263D1D3424D21885151A2F
          BA16B89B3E802A70447457658A01368A733832E0069886B6DB527F184688BDDB
          02D6803EE02CD8045E48B028050F405FD1DD5786B69FB908F502A7D8337BE156
          70D8BE078962701C4C05DF4025DA8EB908F513DD259CB6B76031B8987CCC3E53
          D70413267355AB7568BD75843B6E27DADEE122C41E5E13DD5D9CA6B9E0AE4F26
          9D10177E4FF0DE3E37F8846AD076B58B10E7FE82E8167E03E681EB81264BA3BF
          E814CF104D8E55687BAF8B5091BD9023C335B04D34F7B4061462B26C00C3ECF9
          72B47DDE4588C175B31D0C0677C072F028800CA78EB9E734E82C9A4C87A2ED16
          57219EE8E74433705C34B7D48A1E1B99A2D446A7C446E710D888B6E3AE428C95
          60B3689911B797EF02CDEDFC9E53C4ED3ED1FEE6E88C06AFA33ACB2872024CF1
          5D7B028E89961ACF45172DB339D7DB42D144CA6076AF104B17AE42CC27BBC122
          FBFE5174A177EBA8073E19961FF5C90B2E425C88B5D65BE613165BB3C128D132
          A43883081BE091B11ADCFBED469642A9320C6E57665D9E453C38678172D1AA91
          1999876D13B80DCE80AB694DB31062EADF63D3D4C3AE5D162D279E0699A74C11
          56A8C0642A45EB20B19EB2FE697495092B44993A9329B25B3CC79648F0722332
          A12EA2BB896566A15D6641B500BC8A4A268CD07CD1332A29C3F294F9A4294A99
          30429CA298E87F07B744775073876FCFA1103F28B5021C15AD6572128184FE76
          E485F242FF9DD02F0F5A53C8FB8FA8370000000049454E44AE426082}
        OnClick = Image8Click
      end
      object Label21: TLabel
        Left = 38
        Top = 382
        Width = 137
        Height = 14
        Caption = 'CAMINHO DO BOLETO'
        FocusControl = DBEdit9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 38
        Top = 465
        Width = 52
        Height = 14
        Caption = 'CODIGO'
        FocusControl = DBEdit10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 167
        Top = 465
        Width = 71
        Height = 14
        Caption = 'CATEGORIA'
        FocusControl = DBEdit11
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Image7: TImage
        Left = 777
        Top = 456
        Width = 33
        Height = 35
        Cursor = crHandPoint
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000240000
          00240806000000E10098980000001974455874536F6674776172650041646F62
          6520496D616765526561647971C9653C0000032269545874584D4C3A636F6D2E
          61646F62652E786D7000000000003C3F787061636B657420626567696E3D22EF
          BBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964
          223F3E203C783A786D706D65746120786D6C6E733A783D2261646F62653A6E73
          3A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520
          352E332D633031312036362E3134353636312C20323031322F30322F30362D31
          343A35363A32372020202020202020223E203C7264663A52444620786D6C6E73
          3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
          32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A786D703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
          3A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365
          526566232220786D703A43726561746F72546F6F6C3D2241646F62652050686F
          746F73686F7020435336202857696E646F7773292220786D704D4D3A496E7374
          616E636549443D22786D702E6969643A37394143393346393842303631314541
          383434393941383037414241373933372220786D704D4D3A446F63756D656E74
          49443D22786D702E6469643A3739414339334641384230363131454138343439
          394138303741424137393337223E203C786D704D4D3A4465726976656446726F
          6D2073745265663A696E7374616E636549443D22786D702E6969643A37394143
          3933463738423036313145413834343939413830374142413739333722207374
          5265663A646F63756D656E7449443D22786D702E6469643A3739414339334638
          384230363131454138343439394138303741424137393337222F3E203C2F7264
          663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A786D
          706D6574613E203C3F787061636B657420656E643D2272223F3ED62BF6030000
          03064944415478DAED975B884D6114C7D71E97312EB98D4B79989AE4414C2EF1
          401E3C79923C604A31721B72BF1B4C9234C648118A98E3F6A2944BB96672C98B
          94F2240CA291A63092C11C1CFF7F6B9DDA8E3367F63EDF3E91CEAA5FE7CCDE67
          EFEFF7DDD6B7C64B2412F22F8597170A2BE4795E36EFE9044AC0703008FC048D
          E021F8D4DE43E906C355A810CC04EB40599AFB5FC02550637239151A030E8009
          017EFB19D483B5A02D174293C17E30C277AD05DC072FC110300E0CF4DDFF0EAE
          D8887E8D52682488D90831DE813A7050FE5C2F63C13E30C9FEA6C849B014FC88
          42A8BB355001BA82C76019B899E199DE6015A80605263D1D3424D21885151A2F
          BA16B89B3E802A70447457658A01368A733832E0069886B6DB527F184688BDDB
          02D6803EE02CD8045E48B028050F405FD1DD5786B69FB908F502A7D8337BE156
          70D8BE078962701C4C05DF4025DA8EB908F513DD259CB6B76031B8987CCC3E53
          D70413267355AB7568BD75843B6E27DADEE122C41E5E13DD5D9CA6B9E0AE4F26
          9D10177E4FF0DE3E37F8846AD076B58B10E7FE82E8167E03E681EB81264BA3BF
          E814CF104D8E55687BAF8B5091BD9023C335B04D34F7B4061462B26C00C3ECF9
          72B47DDE4588C175B31D0C0677C072F028800CA78EB9E734E82C9A4C87A2ED16
          57219EE8E74433705C34B7D48A1E1B99A2D446A7C446E710D888B6E3AE428C95
          60B3689911B797EF02CDEDFC9E53C4ED3ED1FEE6E88C06AFA33ACB2872024CF1
          5D7B028E89961ACF45172DB339D7DB42D144CA6076AF104B17AE42CC27BBC122
          FBFE5174A177EBA8073E19961FF5C90B2E425C88B5D65BE613165BB3C128D132
          A43883081BE091B11ADCFBED469642A9320C6E57665D9E453C38678172D1AA91
          1999876D13B80DCE80AB694DB31062EADF63D3D4C3AE5D162D279E0699A74C11
          56A8C0642A45EB20B19EB2FE697495092B44993A9329B25B3CC79648F0722332
          A12EA2BB896566A15D6641B500BC8A4A268CD07CD1332A29C3F294F9A4294A99
          30429CA298E87F07B744775073876FCFA1103F28B5021C15AD6572128184FE76
          E485F242FF9DD02F0F5A53C8FB8FA8370000000049454E44AE426082}
        OnClick = Image7Click
      end
      object Label27: TLabel
        Left = 38
        Top = 106
        Width = 131
        Height = 14
        Caption = 'NUMERO DO BOLETO'
        FocusControl = DBEdit12
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object StaticText1: TStaticText
        Left = 38
        Top = 11
        Width = 151
        Height = 22
        Caption = 'CONTA A PAGAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object Panel3: TPanel
        Left = 0
        Top = 592
        Width = 1342
        Height = 50
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 10
        object pnCancelar: TPanel
          AlignWithMargins = True
          Left = 978
          Top = 4
          Width = 186
          Height = 42
          Cursor = crHandPoint
          Align = alRight
          BevelKind = bkTile
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          OnClick = pnCancelarClick
          object Label9: TLabel
            Left = 52
            Top = 11
            Width = 111
            Height = 14
            Cursor = crHandPoint
            Caption = 'CANCELAR | ESC'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = pnCancelarClick
          end
          object Image1: TImage
            Left = 0
            Top = -5
            Width = 41
            Height = 41
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
            OnClick = pnCancelarClick
          end
        end
        object pnGravar: TPanel
          AlignWithMargins = True
          Left = 1170
          Top = 4
          Width = 168
          Height = 42
          Cursor = crHandPoint
          Align = alRight
          BevelKind = bkTile
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          OnClick = pnGravarClick
          object Label10: TLabel
            AlignWithMargins = True
            Left = 64
            Top = 11
            Width = 86
            Height = 14
            Cursor = crHandPoint
            Caption = 'GRAVAR | F1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = pnGravarClick
          end
          object Image2: TImage
            Left = 4
            Top = -5
            Width = 48
            Height = 41
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
            OnClick = pnGravarClick
          end
        end
      end
      object DBEdit1: TDBEdit
        Left = 38
        Top = 65
        Width = 134
        Height = 22
        DataField = 'CODIGO'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit4: TDBEdit
        Left = 37
        Top = 284
        Width = 251
        Height = 22
        DataField = 'VALOR'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 37
        Top = 344
        Width = 134
        Height = 22
        DataField = 'DATA_VENCIMENTO'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = DBEdit5Change
        OnKeyPress = DBEdit2KeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 37
        Top = 520
        Width = 145
        Height = 22
        DataField = 'SITUACAO'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Items.Strings = (
          'ABERTO'
          'QUITADO')
        ParentFont = False
        TabOrder = 7
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 93
        Top = 171
        Width = 54
        Height = 22
        DataField = 'COD_EMPRESA'
        DataSource = dsContasPagar
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit7: TDBEdit
        Left = 263
        Top = 171
        Width = 500
        Height = 22
        DataField = 'EMPRESA_NOME'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 93
        Top = 227
        Width = 54
        Height = 22
        DataField = 'COD_FUNCIONARIO'
        DataSource = dsContasPagar
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit8: TDBEdit
        Left = 263
        Top = 227
        Width = 500
        Height = 22
        DataField = 'FUNCIONARIO_NOME'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DBEdit8KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 37
        Top = 402
        Width = 800
        Height = 22
        Cursor = crIBeam
        DataField = 'CAMINHO_ARQUIVOS'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = DBEdit2KeyPress
      end
      object Button6: TButton
        Left = 854
        Top = 387
        Width = 259
        Height = 51
        Cursor = crHandPoint
        Caption = 'ADICIONAR CAMINHO DO BOLETO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = Button6Click
      end
      object DBEdit10: TDBEdit
        Left = 93
        Top = 462
        Width = 54
        Height = 22
        DataField = 'COD_CATEGORIA'
        DataSource = dsContasPagar
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit11: TDBEdit
        Left = 263
        Top = 462
        Width = 500
        Height = 22
        DataField = 'CATEGORIA_NOME'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = DBEdit11KeyPress
      end
      object Button9: TButton
        Left = 832
        Top = 165
        Width = 96
        Height = 36
        Caption = 'LIMPAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 832
        Top = 221
        Width = 96
        Height = 36
        Caption = 'LIMPAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 832
        Top = 456
        Width = 96
        Height = 36
        Caption = 'LIMPAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = Button11Click
      end
      object DBEdit12: TDBEdit
        Left = 37
        Top = 126
        Width = 291
        Height = 22
        DataField = 'NUMERO_BOLETO'
        DataSource = dsContasPagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DBEdit12KeyPress
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1350
    Height = 49
    Align = alTop
    Caption = 'CONTAS A PAGAR'
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
  object qrContasPagar: TFDQuery
    Active = True
    AfterInsert = qrContasPagarAfterInsert
    Connection = Dm.Conexao
    SQL.Strings = (
      'Select * from CONTAS_PAGAR')
    Left = 344
    Top = 216
    object qrContasPagarCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrContasPagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrContasPagarDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
      Origin = 'DATA_VENCIMENTO'
    end
    object qrContasPagarSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object qrContasPagarCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object qrContasPagarEMPRESA_NOME: TStringField
      FieldName = 'EMPRESA_NOME'
      Origin = 'EMPRESA_NOME'
      Size = 100
    end
    object qrContasPagarBANCO_PAGAMENTO: TStringField
      FieldName = 'BANCO_PAGAMENTO'
      Origin = 'BANCO_PAGAMENTO'
      Size = 100
    end
    object qrContasPagarFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Origin = 'FORMA_PAGAMENTO'
      Size = 100
    end
    object qrContasPagarCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
    end
    object qrContasPagarFUNCIONARIO_NOME: TStringField
      FieldName = 'FUNCIONARIO_NOME'
      Origin = 'FUNCIONARIO_NOME'
      Size = 100
    end
    object qrContasPagarCAMINHO_ARQUIVOS: TStringField
      FieldName = 'CAMINHO_ARQUIVOS'
      Origin = 'CAMINHO_ARQUIVOS'
      Size = 300
    end
    object qrContasPagarCOD_CATEGORIA: TIntegerField
      FieldName = 'COD_CATEGORIA'
      Origin = 'COD_CATEGORIA'
    end
    object qrContasPagarCATEGORIA_NOME: TStringField
      FieldName = 'CATEGORIA_NOME'
      Origin = 'CATEGORIA_NOME'
      Size = 100
    end
    object qrContasPagarNUMERO_BOLETO: TStringField
      FieldName = 'NUMERO_BOLETO'
      Origin = 'NUMERO_BOLETO'
      Size = 50
    end
  end
  object dsContasPagar: TDataSource
    DataSet = qrContasPagar
    Left = 344
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 500
    Top = 297
    object EXCLUIR1: TMenuItem
      Caption = 'EXCLUIR'
      ShortCut = 114
      OnClick = btnExcluirClick
    end
    object INCLUIR1: TMenuItem
      Caption = 'INCLUIR'
      ShortCut = 113
      OnClick = btnIncluirClick
    end
    object ALTERAR1: TMenuItem
      Caption = 'ALTERAR'
      ShortCut = 115
      OnClick = btnAlterarClick
    end
    object CANCELAR1: TMenuItem
      Caption = 'CANCELAR'
      ShortCut = 27
      OnClick = pnCancelarClick
    end
    object PAGAR1: TMenuItem
      Caption = 'PAGAR'
      ShortCut = 116
      OnClick = pnPagarClick
    end
    object GRAVAR1: TMenuItem
      Caption = 'GRAVAR'
      ShortCut = 112
      OnClick = pnGravarClick
    end
    object ESTORNAR1: TMenuItem
      Caption = 'ESTORNAR'
      ShortCut = 117
      OnClick = pnEstornarClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 884
    Top = 489
  end
  object frxContasPagar: TfrxDBDataset
    UserName = 'qrContasPagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'VALOR=VALOR'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'SITUACAO=SITUACAO'
      'COD_EMPRESA=COD_EMPRESA'
      'EMPRESA_NOME=EMPRESA_NOME'
      'BANCO_PAGAMENTO=BANCO_PAGAMENTO'
      'FORMA_PAGAMENTO=FORMA_PAGAMENTO'
      'COD_FUNCIONARIO=COD_FUNCIONARIO'
      'FUNCIONARIO_NOME=FUNCIONARIO_NOME'
      'CAMINHO_ARQUIVOS=CAMINHO_ARQUIVOS'
      'COD_CATEGORIA=COD_CATEGORIA'
      'CATEGORIA_NOME=CATEGORIA_NOME'
      'NUMERO_BOLETO=NUMERO_BOLETO')
    DataSet = qrContasPagar
    BCDToCurrency = False
    Left = 355
    Top = 379
  end
  object fxContasPagar: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44292.946550983800000000
    ReportOptions.LastChange = 44439.709449363400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <qrContasPagar."SITUACAO"> = '#39'QUITADO'#39' then'
      '    frxDBDataset1SITUACAO.font.Color := clBlue'
      '  else if <qrContasPagar."SITUACAO"> = '#39'ABERTO'#39' then'
      '    frxDBDataset1SITUACAO.font.Color := clGreen;'
      ''
      '  if <qrContasPagar."EMPRESA_NOME"> = '#39#39' then'
      '    frxDBDataset1EMPRESA_NOME.Text := '#39'Sem nome registrado...'#39
      '  else'
      
        '    frxDBDataset1EMPRESA_NOME.Text := <qrContasPagar."EMPRESA_NO' +
        'ME">;          '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  '
      'end;'
      ''
      'begin'
      ''
      '  '
      'end.              ')
    Left = 355
    Top = 323
    Datasets = <
      item
        DataSet = frxContasPagar
        DataSetName = 'qrContasPagar'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      OnAfterPrint = 'Page1OnAfterPrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 32.456710000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELA'#199#195'O DE CONTAS A PAGAR POR DATA DE VENCIMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 668.976810000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 81.488250000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 173.858380000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxContasPagar
        DataSetName = 'qrContasPagar'
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 220.771800000000000000
          Top = 3.102350000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[qrContasPagar."CODIGO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1EMPRESA_NOME: TfrxMemoView
          IndexTag = 2
          AllowVectorExport = True
          Top = 65.354360000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."EMPRESA_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1SITUACAO: TfrxMemoView
          IndexTag = 3
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 65.354360000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."SITUACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1DATA_VENCIMENTO: TfrxMemoView
          IndexTag = 4
          AllowVectorExport = True
          Left = 536.134200000000000000
          Top = 65.354360000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."DATA_VENCIMENTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1VALOR: TfrxMemoView
          IndexTag = 5
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 66.252010000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'R$[<qrContasPagar."VALOR">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1NUMERO_BOLETO: TfrxMemoView
          IndexTag = 6
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 65.354360000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO_BOLETO'
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."NUMERO_BOLETO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 3.779530000000000000
          Width = 215.055230390000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO DA CONTA A PAGAR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 34.015770000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'EMPRESA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 225.992270000000000000
          Top = 34.015770000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#186' BOLETO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 421.307360000000000000
          Top = 34.015770000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 535.693260000000000000
          Top = 34.015770000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA VENC.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 34.015770000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 98.267780000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'FUNCIONARIO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 187.874150000000000000
          Top = 98.267780000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'FORMA DE PGTO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          IndexTag = 2
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 124.724490000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."FUNCIONARIO_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          IndexTag = 6
          AllowVectorExport = True
          Left = 186.653680000000000000
          Top = 124.724490000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."FORMA_PAGAMENTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 345.732530000000000000
          Top = 98.267780000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'BANCO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          IndexTag = 6
          AllowVectorExport = True
          Left = 343.512060000000000000
          Top = 124.724490000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."BANCO_PAGAMENTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 98.267780000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'CATEGORIA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          IndexTag = 6
          AllowVectorExport = True
          Left = 522.354670000000000000
          Top = 124.724490000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataSet = frxContasPagar
          DataSetName = 'qrContasPagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[qrContasPagar."CATEGORIA_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 158.740260000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 370.393940000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 26.236240000000000000
          Width = 124.724490000000000000
          Height = 22.677180000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'R$[SUM(<qrContasPagar."VALOR">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 409.748300000000000000
          Top = 26.236240000000000000
          Width = 177.637910000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Fill.BackColor = clScrollBar
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR TOTAL A PAGAR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
end

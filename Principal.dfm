object Form_Principal: TForm_Principal
  Left = 594
  Top = 211
  Width = 306
  Height = 578
  BorderIcons = [biSystemMenu]
  Caption = 'Dw TraderBoot'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 157
    Top = 503
    Width = 71
    Height = 20
    Caption = 'Desligado'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 101
    Top = 514
    Width = 32
    Height = 13
    Caption = 'Label7'
  end
  object Label15: TLabel
    Left = 99
    Top = 498
    Width = 38
    Height = 13
    Caption = 'Posi'#231#227'o'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 73
    Caption = 'Bot'#227'o de Compra :'
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 11
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o X'
    end
    object Label2: TLabel
      Left = 74
      Top = 11
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o Y'
    end
    object Label4: TLabel
      Left = 142
      Top = 10
      Width = 52
      Height = 13
      Caption = 'C'#243'digo Cor'
      FocusControl = cor
    end
    object btnClique: TButton
      Left = 223
      Top = 14
      Width = 52
      Height = 21
      Caption = 'Testar'
      TabOrder = 4
      OnClick = btnCliqueClick
    end
    object Panel1: TPanel
      Left = 144
      Top = 50
      Width = 74
      Height = 19
      BiDiMode = bdLeftToRight
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
    end
    object btnbuscar: TButton
      Left = 75
      Top = 48
      Width = 65
      Height = 20
      Caption = 'Gravar'
      TabOrder = 6
      OnClick = btnbuscarClick
    end
    object Button1: TButton
      Left = 3
      Top = 49
      Width = 64
      Height = 19
      Caption = 'Iniciar'
      TabOrder = 5
      OnClick = Button1Click
    end
    object pos_x: TDBEdit
      Left = 3
      Top = 27
      Width = 65
      Height = 21
      DataField = 'bc_pos_x'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object pos_y: TDBEdit
      Left = 75
      Top = 27
      Width = 65
      Height = 21
      DataField = 'bc_pos_y'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object Button2: TButton
      Left = 224
      Top = 46
      Width = 52
      Height = 21
      Caption = 'Ver'
      TabOrder = 3
      OnClick = Button2Click
    end
    object cor: TDBEdit
      Left = 142
      Top = 26
      Width = 75
      Height = 21
      DataField = 'bc_cor'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 72
    Width = 289
    Height = 73
    Caption = 'Bot'#227'o de Venda :'
    TabOrder = 1
    object Label5: TLabel
      Left = 3
      Top = 11
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o X'
    end
    object Label6: TLabel
      Left = 74
      Top = 11
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o Y'
    end
    object Label8: TLabel
      Left = 141
      Top = 10
      Width = 52
      Height = 13
      Caption = 'C'#243'digo Cor'
      FocusControl = vcor
    end
    object Button3: TButton
      Left = 223
      Top = 13
      Width = 54
      Height = 20
      Caption = 'Testar'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Panel2: TPanel
      Left = 143
      Top = 49
      Width = 77
      Height = 19
      BiDiMode = bdLeftToRight
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 6
    end
    object Button4: TButton
      Left = 76
      Top = 50
      Width = 63
      Height = 19
      Caption = 'Gravar'
      TabOrder = 7
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 4
      Top = 50
      Width = 63
      Height = 19
      Caption = 'Iniciar'
      TabOrder = 5
      OnClick = Button5Click
    end
    object vpos_x: TDBEdit
      Left = 3
      Top = 27
      Width = 65
      Height = 21
      DataField = 'bv_pos_x'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object vpos_y: TDBEdit
      Left = 75
      Top = 27
      Width = 65
      Height = 21
      DataField = 'bv_pos_y'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object Button6: TButton
      Left = 224
      Top = 45
      Width = 54
      Height = 20
      Caption = 'Ver'
      TabOrder = 3
      OnClick = Button6Click
    end
    object vcor: TDBEdit
      Left = 141
      Top = 26
      Width = 81
      Height = 21
      DataField = 'bv_cor'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
  end
  object Button7: TButton
    Left = 8
    Top = 501
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button7Click
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 356
    Width = 289
    Height = 137
    Caption = 'Sensor 1:'
    TabOrder = 3
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o X'
    end
    object Label10: TLabel
      Left = 79
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o Y'
    end
    object Button9: TButton
      Left = 195
      Top = 24
      Width = 42
      Height = 25
      Caption = 'Gravar'
      TabOrder = 3
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 148
      Top = 25
      Width = 42
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 2
      OnClick = Button10Click
    end
    object s1_pos_x: TDBEdit
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DataField = 's1_pos_x'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object s1_pos_y: TDBEdit
      Left = 80
      Top = 32
      Width = 65
      Height = 21
      DataField = 's1_pos_y'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object GroupBox4: TGroupBox
      Left = 152
      Top = 54
      Width = 128
      Height = 75
      Caption = 'Cor de Compra:'
      TabOrder = 4
      object Label12: TLabel
        Left = 8
        Top = 15
        Width = 52
        Height = 13
        Caption = 'C'#243'digo Cor'
        FocusControl = s1_ccor
      end
      object Label11: TLabel
        Left = 11
        Top = 52
        Width = 19
        Height = 13
        Caption = 'Cor:'
      end
      object s1_ccor: TDBEdit
        Left = 8
        Top = 29
        Width = 81
        Height = 21
        DataField = 's1c_cor'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 40
        Top = 51
        Width = 49
        Height = 19
        BiDiMode = bdLeftToRight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnClick = Panel3Click
      end
    end
    object GroupBox5: TGroupBox
      Left = 5
      Top = 54
      Width = 131
      Height = 75
      Caption = 'Cor de Venda:'
      TabOrder = 5
      object Label13: TLabel
        Left = 8
        Top = 15
        Width = 52
        Height = 13
        Caption = 'C'#243'digo Cor'
        FocusControl = s1_vcor
      end
      object Label14: TLabel
        Left = 11
        Top = 52
        Width = 19
        Height = 13
        Caption = 'Cor:'
      end
      object s1_vcor: TDBEdit
        Left = 8
        Top = 29
        Width = 81
        Height = 21
        DataField = 's1v_cor'
        DataSource = DataSource1
        Enabled = False
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 40
        Top = 51
        Width = 49
        Height = 19
        BiDiMode = bdLeftToRight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnClick = Panel4Click
      end
    end
    object Button8: TButton
      Left = 241
      Top = 24
      Width = 42
      Height = 25
      Caption = 'Ver'
      TabOrder = 6
      OnClick = Button8Click
    end
  end
  object BitBtn1: TBitBtn
    Left = 249
    Top = 500
    Width = 28
    Height = 25
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkYes
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 145
    Width = 289
    Height = 73
    Caption = 'Bot'#227'o de Reverter:'
    TabOrder = 5
    object Label16: TLabel
      Left = 3
      Top = 11
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o X'
    end
    object Label17: TLabel
      Left = 74
      Top = 11
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o Y'
    end
    object Label18: TLabel
      Left = 141
      Top = 10
      Width = 52
      Height = 13
      Caption = 'C'#243'digo Cor'
      FocusControl = br_cor
    end
    object Button11t: TButton
      Left = 223
      Top = 13
      Width = 54
      Height = 20
      Caption = 'Testar'
      TabOrder = 4
      OnClick = Button11tClick
    end
    object Panel5: TPanel
      Left = 143
      Top = 49
      Width = 77
      Height = 19
      BiDiMode = bdLeftToRight
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
    end
    object Button12: TButton
      Left = 76
      Top = 50
      Width = 63
      Height = 19
      Caption = 'Gravar'
      TabOrder = 6
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 4
      Top = 50
      Width = 63
      Height = 19
      Caption = 'Iniciar'
      TabOrder = 5
      OnClick = Button13Click
    end
    object br_pos_x: TDBEdit
      Left = 3
      Top = 27
      Width = 65
      Height = 21
      DataField = 'br_pos_x'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object br_pos_y: TDBEdit
      Left = 75
      Top = 27
      Width = 65
      Height = 21
      DataField = 'br_pos_y'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object Button14: TButton
      Left = 224
      Top = 45
      Width = 54
      Height = 20
      Caption = 'Ver'
      TabOrder = 3
      OnClick = Button14Click
    end
    object br_cor: TDBEdit
      Left = 141
      Top = 26
      Width = 81
      Height = 21
      DataField = 'br_cor'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 2
    end
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 217
    Width = 289
    Height = 137
    Caption = 'Sensor Posi'#231#227'o:'
    TabOrder = 6
    object Label19: TLabel
      Left = 8
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o X'
    end
    object Label20: TLabel
      Left = 79
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o Y'
    end
    object Label25: TLabel
      Left = 148
      Top = 14
      Width = 52
      Height = 13
      Caption = 'C'#243'digo Cor'
    end
    object Button11: TButton
      Left = 235
      Top = 87
      Width = 42
      Height = 18
      Caption = 'Gravar'
      TabOrder = 3
      OnClick = Button11Click
    end
    object Button15: TButton
      Left = 236
      Top = 62
      Width = 42
      Height = 18
      Caption = 'Iniciar'
      TabOrder = 2
      OnClick = Button15Click
    end
    object sp_pos_x: TDBEdit
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DataField = 'sp_pos_x'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 0
    end
    object sp_pos_y: TDBEdit
      Left = 80
      Top = 32
      Width = 65
      Height = 21
      DataField = 'sp_pos_y'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object GroupBox8: TGroupBox
      Left = 119
      Top = 54
      Width = 108
      Height = 75
      Caption = 'Cor Comprado'
      TabOrder = 4
      object Label21: TLabel
        Left = 8
        Top = 15
        Width = 52
        Height = 13
        Caption = 'C'#243'digo Cor'
        FocusControl = spc_cor
      end
      object Label22: TLabel
        Left = 11
        Top = 52
        Width = 19
        Height = 13
        Caption = 'Cor:'
      end
      object spc_cor: TDBEdit
        Left = 8
        Top = 29
        Width = 81
        Height = 21
        DataField = 'spc_cor'
        DataSource = DataSource1
        TabOrder = 0
      end
      object Panel6: TPanel
        Left = 40
        Top = 51
        Width = 49
        Height = 19
        BiDiMode = bdLeftToRight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnClick = Panel6Click
      end
    end
    object GroupBox9: TGroupBox
      Left = 5
      Top = 54
      Width = 111
      Height = 75
      Caption = 'Cor Vendido'
      TabOrder = 5
      object Label23: TLabel
        Left = 8
        Top = 15
        Width = 52
        Height = 13
        Caption = 'C'#243'digo Cor'
        FocusControl = spv_cor
      end
      object Label24: TLabel
        Left = 11
        Top = 52
        Width = 19
        Height = 13
        Caption = 'Cor:'
      end
      object spv_cor: TDBEdit
        Left = 8
        Top = 29
        Width = 81
        Height = 21
        DataField = 'spv_cor'
        DataSource = DataSource1
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 40
        Top = 51
        Width = 49
        Height = 19
        BiDiMode = bdLeftToRight
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnClick = Panel7Click
      end
    end
    object Button16: TButton
      Left = 233
      Top = 111
      Width = 44
      Height = 18
      Caption = 'Ver'
      TabOrder = 6
      OnClick = Button16Click
    end
    object Edit1: TEdit
      Left = 151
      Top = 30
      Width = 126
      Height = 21
      TabOrder = 7
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 112
    Top = 412
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'cadastro.xml'
    FieldDefs = <
      item
        Name = 'bc_pos_x'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'bc_pos_y'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'bc_cor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'bv_pos_x'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'bv_pos_y'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'bv_cor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 's1_pos_x'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 's1_pos_y'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 's1c_cor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 's1v_cor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'br_pos_x'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'br_pos_y'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'br_cor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sp_pos_x'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sp_pos_y'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'spc_cor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'spv_cor'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 112
    Top = 436
    Data = {
      F10500009619E0BD010000001800000011001000000003000000D0020862635F
      706F735F7801004900100001000557494454480200020019000862635F706F73
      5F7901004900100001000557494454480200020019000662635F636F72010049
      00100001000557494454480200020019000862765F706F735F78010049001000
      01000557494454480200020019000862765F706F735F79010049001000010005
      57494454480200020019000662765F636F720100490010000100055749445448
      0200020019000873315F706F735F780100490010000100055749445448020002
      0019000873315F706F735F790100490010000100055749445448020002001900
      077331635F636F72010049001000010005574944544802000200190007733176
      5F636F7201004900100001000557494454480200020019000862725F706F735F
      7801004900100001000557494454480200020019000862725F706F735F790100
      4900100001000557494454480200020019000662725F636F7201004900100001
      000557494454480200020019000873705F706F735F7801004900100001000557
      494454480200020019000873705F706F735F7901004900100001000557494454
      48020002001900077370635F636F720100490010000100055749445448020002
      001900077370765F636F72010049001000010005574944544802000200190001
      000A4348414E47455F4C4F470400820030000000010000000000000004000000
      0200000001000000080000000300000002000000080000000400000003000000
      0800000005000000040000000800000006000000050000000800000007000000
      0600000008000000080000000700000008000000090000000800000008000000
      0A00000009000000080000000B0000000A000000080000000C0000000B000000
      080000000D0000000C000000080000000E0000000D000000080000000F000000
      0E00000008000000100000000F00000008000000055055555501043631373805
      36343434330D505555550104333130360532323831360D505555550105313131
      39360536343338320D4055555501053131313936053634353033092430303430
      434246430D405555550105313131393605363435303301000D40555555010533
      3131323905363436323507636C57686974650D40555555010533343333380533
      31313239092430304630463046300D4055555501053632323932053131353930
      092430304446374331390D005055550105363232393205313135393009243030
      444637433139053634363133053131353239092430303139313944440D000055
      5501053632323932053131353930092430304446374331390536343631330531
      31353239092430303139313944440535343734390535373232320D0000515501
      0536323239320531313539300924303044463743313905363436313305313135
      32390924303031393139444405353437343905353732323206636C4C696D650D
      0000505501053632323932053131353930092430304446374331390536343631
      330531313532390924303031393139444405353437343905353732323206636C
      4C696D6505636C5265640D0000505501052D3332373705313134303809243030
      444637433139042D39323205313133343709243030313931394444062D313037
      383605353732383206636C4C696D6505636C5265640D0000005401052D333237
      3705313134303809243030444637433139042D39323205313133343709243030
      313931394444062D313037383605353732383206636C4C696D6505636C526564
      042D393930053135383938092430303139313944440D0000005401052D333237
      3705313134303809243030444637433139042D39323205313133343709243030
      313931394444062D313034343505353732323206636C4C696D6505636C526564
      042D393930053135383938092430303139313944440C0000005401052D333237
      3705313134303809243030444637433139042D39323205313133343709243030
      313931394444062D313034343505353732323206636C4C696D6505636C526564
      042D39353605313632303209243030313931394444}
    object ClientDataSet1bc_pos_x: TStringField
      FieldName = 'bc_pos_x'
      Size = 25
    end
    object ClientDataSet1bc_pos_y: TStringField
      FieldName = 'bc_pos_y'
      Size = 25
    end
    object ClientDataSet1bc_cor: TStringField
      FieldName = 'bc_cor'
      Size = 25
    end
    object ClientDataSet1bv_pos_x: TStringField
      FieldName = 'bv_pos_x'
      Size = 25
    end
    object ClientDataSet1bv_pos_y: TStringField
      FieldName = 'bv_pos_y'
      Size = 25
    end
    object ClientDataSet1bv_cor: TStringField
      FieldName = 'bv_cor'
      Size = 25
    end
    object ClientDataSet1s1_pos_x: TStringField
      FieldName = 's1_pos_x'
      Size = 25
    end
    object ClientDataSet1s1_pos_y: TStringField
      FieldName = 's1_pos_y'
      Size = 25
    end
    object ClientDataSet1s1c_cor: TStringField
      FieldName = 's1c_cor'
      Size = 25
    end
    object ClientDataSet1s1v_cor: TStringField
      FieldName = 's1v_cor'
      Size = 25
    end
    object ClientDataSet1br_pos_x: TStringField
      FieldName = 'br_pos_x'
      Size = 25
    end
    object ClientDataSet1br_pos_y: TStringField
      FieldName = 'br_pos_y'
      Size = 25
    end
    object ClientDataSet1br_cor: TStringField
      FieldName = 'br_cor'
      Size = 25
    end
    object ClientDataSet1sp_pos_x: TStringField
      FieldName = 'sp_pos_x'
      Size = 25
    end
    object ClientDataSet1sp_pos_y: TStringField
      FieldName = 'sp_pos_y'
      Size = 25
    end
    object ClientDataSet1spc_cor: TStringField
      FieldName = 'spc_cor'
      Size = 25
    end
    object ClientDataSet1spv_cor: TStringField
      FieldName = 'spv_cor'
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 112
    Top = 460
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 248
    Top = 460
  end
end

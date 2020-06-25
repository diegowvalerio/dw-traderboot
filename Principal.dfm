object Form_Principal: TForm_Principal
  Left = 636
  Top = 293
  Width = 306
  Height = 376
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
    Top = 80
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
    Left = 104
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button7Click
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 160
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
      Left = 220
      Top = 24
      Width = 59
      Height = 25
      Caption = 'Gravar'
      TabOrder = 3
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 148
      Top = 25
      Width = 59
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
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 304
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
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 40
    Top = 304
    Data = {
      8B0200009619E0BD01000000180000000A000900000003000000B5010862635F
      706F735F7801004900100001000557494454480200020019000862635F706F73
      5F7901004900100001000557494454480200020019000662635F636F72010049
      00100001000557494454480200020019000862765F706F735F78010049001000
      01000557494454480200020019000862765F706F735F79010049001000010005
      57494454480200020019000662765F636F720100490010000100055749445448
      0200020019000873315F706F735F780100490010000100055749445448020002
      0019000873315F706F735F790100490010000100055749445448020002001900
      077331635F636F72010049001000010005574944544802000200190007733176
      5F636F72010049001000010005574944544802000200190001000A4348414E47
      455F4C4F47040082001B00000001000000000000000400000002000000010000
      0008000000030000000200000008000000040000000300000008000000050000
      0004000000080000000600000005000000080000000700000006000000080000
      0008000000070000000800000009000000080000000800000005505505043631
      37380536343434330D50550504333130360532323831360D5055050531313139
      360536343338320D405505053131313936053634353033092430303430434246
      430D40550505313131393605363435303301000D405505053331313239053634
      36323507636C57686974650D4055050533343333380533313132390924303046
      30463046300D405505053632323932053131353930092430304446374331390C
      0050050536323239320531313539300924303044463743313905363436313305
      313135323909243030313931394444}
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
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 72
    Top = 304
  end
end

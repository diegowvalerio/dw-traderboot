object Form_Principal: TForm_Principal
  Left = 551
  Top = 303
  Width = 571
  Height = 315
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
    Width = 553
    Height = 73
    Caption = 'Bot'#227'o de Compra :'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o X'
    end
    object Label2: TLabel
      Left = 79
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o Y'
    end
    object Label3: TLabel
      Left = 240
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Cor:'
    end
    object Label4: TLabel
      Left = 152
      Top = 24
      Width = 52
      Height = 13
      Caption = 'C'#243'digo Cor'
      FocusControl = cor
    end
    object btnClique: TButton
      Left = 411
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Testar'
      TabOrder = 0
      OnClick = btnCliqueClick
    end
    object Panel1: TPanel
      Left = 241
      Top = 40
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
      OnMouseDown = Panel1MouseDown
      OnMouseMove = Panel1MouseMove
      OnMouseUp = Panel1MouseUp
    end
    object btnbuscar: TButton
      Left = 323
      Top = 42
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnbuscarClick
    end
    object Button1: TButton
      Left = 323
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object pos_x: TDBEdit
      Left = 8
      Top = 40
      Width = 65
      Height = 21
      DataField = 'bc_pos_x'
      DataSource = DataSource1
      TabOrder = 4
    end
    object pos_y: TDBEdit
      Left = 80
      Top = 40
      Width = 65
      Height = 21
      DataField = 'bc_pos_y'
      DataSource = DataSource1
      TabOrder = 5
    end
    object Button2: TButton
      Left = 412
      Top = 42
      Width = 75
      Height = 25
      Caption = 'Ver'
      TabOrder = 6
      OnClick = Button2Click
    end
    object cor: TDBEdit
      Left = 152
      Top = 40
      Width = 81
      Height = 21
      DataField = 'bc_cor'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 80
    Width = 553
    Height = 73
    Caption = 'Bot'#227'o de Venda :'
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o X'
    end
    object Label6: TLabel
      Left = 79
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Posi'#231#227'o Y'
    end
    object Label7: TLabel
      Left = 240
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Cor:'
    end
    object Label8: TLabel
      Left = 152
      Top = 24
      Width = 52
      Height = 13
      Caption = 'C'#243'digo Cor'
      FocusControl = vcor
    end
    object Button3: TButton
      Left = 411
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Testar'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Panel2: TPanel
      Left = 241
      Top = 40
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
      OnMouseDown = Panel1MouseDown
      OnMouseMove = Panel1MouseMove
      OnMouseUp = Panel1MouseUp
    end
    object Button4: TButton
      Left = 323
      Top = 42
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 323
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Iniciar'
      TabOrder = 3
      OnClick = Button5Click
    end
    object vpos_x: TDBEdit
      Left = 8
      Top = 40
      Width = 65
      Height = 21
      DataField = 'bv_pos_x'
      DataSource = DataSource1
      TabOrder = 4
    end
    object vpos_y: TDBEdit
      Left = 80
      Top = 40
      Width = 65
      Height = 21
      DataField = 'bv_pos_y'
      DataSource = DataSource1
      TabOrder = 5
    end
    object Button6: TButton
      Left = 412
      Top = 42
      Width = 75
      Height = 25
      Caption = 'Ver'
      TabOrder = 6
      OnClick = Button6Click
    end
    object vcor: TDBEdit
      Left = 152
      Top = 40
      Width = 81
      Height = 21
      DataField = 'bv_cor'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object Button7: TButton
    Left = 224
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = Button7Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 240
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
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 240
    Data = {
      D50100009619E0BD01000000180000000600080000000300000037010862635F
      706F735F7801004900100001000557494454480200020019000862635F706F73
      5F7901004900100001000557494454480200020019000662635F636F72010049
      00100001000557494454480200020019000862765F706F735F78010049001000
      01000557494454480200020019000862765F706F735F79010049001000010005
      57494454480200020019000662765F636F720100490010000100055749445448
      02000200190001000A4348414E47455F4C4F4704008200180000000100000000
      0000000400000002000000010000000800000003000000020000000800000004
      0000000300000008000000050000000400000008000000060000000500000008
      0000000700000006000000080000000800000007000000080000000550050436
      3137380536343434330D500504333130360532323831360D5005053131313936
      0536343338320D4005053131313936053634353033092430303430434246430D
      400505313131393605363435303301000D400505333131323905363436323507
      636C57686974650D400505333433333805333131323909243030463046304630
      0C400505363232393205313135393009243030444637433139}
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
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 88
    Top = 240
  end
end

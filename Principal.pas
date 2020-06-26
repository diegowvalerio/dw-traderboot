unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, DB, DBClient;

type
  TForm_Principal = class(TForm)
    Timer1: TTimer;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    btnClique: TButton;
    Panel1: TPanel;
    btnbuscar: TButton;
    Button1: TButton;
    pos_x: TDBEdit;
    pos_y: TDBEdit;
    Button2: TButton;
    Label4: TLabel;
    cor: TDBEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Button3: TButton;
    Panel2: TPanel;
    Button4: TButton;
    Button5: TButton;
    vpos_x: TDBEdit;
    vpos_y: TDBEdit;
    Button6: TButton;
    vcor: TDBEdit;
    Button7: TButton;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Button9: TButton;
    Button10: TButton;
    s1_pos_x: TDBEdit;
    s1_pos_y: TDBEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    s1_ccor: TDBEdit;
    Label11: TLabel;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    s1_vcor: TDBEdit;
    Panel4: TPanel;
    Button8: TButton;
    Timer2: TTimer;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    Label15: TLabel;
    GroupBox6: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Button11t: TButton;
    Panel5: TPanel;
    Button12: TButton;
    Button13: TButton;
    br_pos_x: TDBEdit;
    br_pos_y: TDBEdit;
    Button14: TButton;
    br_cor: TDBEdit;
    GroupBox7: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Button11: TButton;
    Button15: TButton;
    sp_pos_x: TDBEdit;
    sp_pos_y: TDBEdit;
    GroupBox8: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    spc_cor: TDBEdit;
    Panel6: TPanel;
    GroupBox9: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    spv_cor: TDBEdit;
    Panel7: TPanel;
    Button16: TButton;
    ClientDataSet1bc_pos_x: TStringField;
    ClientDataSet1bc_pos_y: TStringField;
    ClientDataSet1bc_cor: TStringField;
    ClientDataSet1bv_pos_x: TStringField;
    ClientDataSet1bv_pos_y: TStringField;
    ClientDataSet1bv_cor: TStringField;
    ClientDataSet1s1_pos_x: TStringField;
    ClientDataSet1s1_pos_y: TStringField;
    ClientDataSet1s1c_cor: TStringField;
    ClientDataSet1s1v_cor: TStringField;
    ClientDataSet1br_pos_x: TStringField;
    ClientDataSet1br_pos_y: TStringField;
    ClientDataSet1br_cor: TStringField;
    ClientDataSet1sp_pos_x: TStringField;
    ClientDataSet1sp_pos_y: TStringField;
    ClientDataSet1spc_cor: TStringField;
    ClientDataSet1spv_cor: TStringField;
    Label25: TLabel;
    Edit1: TEdit;
    procedure btnCliqueClick(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnbuscarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button11tClick(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);

  private

  public
   MouseDownSpot : TPoint;
   Capturing : bool;
  end;

var
  Form_Principal: TForm_Principal;
  Pt: TPoint;
  arq: TextFile;
  bc,bv,br,sp,sp_ccor,sp_vcor,s1,s1c_cor,s1v_cor,iniciar,posicao,posicao_robo: Integer;

implementation

uses BotaoCompra;

{$R *.dfm}

procedure TForm_Principal.btnCliqueClick(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(pos_x.Text), StrToInt(pos_y.Text), 0, 0);
{Simula o pressionamento do botãoesquerdo do mouse}
mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
{ Simula soltando o botãoesquerdo do mouse }
mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
end;

function DesktopColor(const X, Y: Integer): TColor;
var
  c: TCanvas;
begin
  try
    c := TCanvas.Create;
    c.Handle := GetWindowDC(GetDesktopWindow);
    Result   := GetPixel(c.Handle, X, Y);
  finally
    //c.Free;
    c.Unlock;
    ReleaseDC(0, c.handle);
    FreeAndNil(c);
  end;
end;

procedure TForm_Principal.Button11tClick(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(br_pos_x.Text), StrToInt(br_pos_y.Text), 0, 0);
{Simula o pressionamento do botãoesquerdo do mouse}
mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
{ Simula soltando o botãoesquerdo do mouse }
mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
end;

procedure TForm_Principal.Panel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Capturing := true;
  MouseDownSpot.X := x;
  MouseDownSpot.Y := Y;
end;

procedure TForm_Principal.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if Capturing then
   begin
    panel1.Left:= panel1.Left-(MouseDownSpot.x-x);
    panel1.Top:= panel1.Top - (MouseDownSpot.y-y);
  end;
end;

procedure TForm_Principal.Panel1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Capturing then begin
   Capturing := false;
   Panel1.Left := panel1.Left - (MouseDownSpot.x -x);
   Panel1.Top := panel1.Top - (MouseDownSpot.y - y);
 end;
end;

procedure TForm_Principal.Timer1Timer(Sender: TObject);
var t1,t2,tx3,ty4 :integer;
begin
  Pt := ClientToScreen(pt);
  GetCursorPos(Pt); // Pega a posição atual do mouse;
  //botao de compra
  if bc = 1 then begin
  //mudar cor do panel
  Panel1.Color := DesktopColor(Pt.X, Pt.Y);
  Panel1.Refresh;

  {Converte Pt para as coordenadas da tela }
  Pt.x := Round(Pt.x * (65535 / Screen.Width));
  Pt.y := Round(Pt.y * (65535 / Screen.Height));

  pos_x.Text := IntToStr(Pt.x);
  pos_y.Text := IntToStr(Pt.y);
  cor.Text := ColorToString(Panel1.Color);
  end;

  //botao de venda
  if bv = 1 then begin
  //mudar cor do panel
  Panel2.Color := DesktopColor(Pt.X, Pt.Y);
  Panel2.Refresh;

  {Converte Pt para as coordenadas da tela }
  Pt.x := Round(Pt.x * (65535 / Screen.Width));
  Pt.y := Round(Pt.y * (65535 / Screen.Height));

  vpos_x.Text := IntToStr(Pt.x);
  vpos_y.Text := IntToStr(Pt.y);
  vcor.Text := ColorToString(Panel2.Color);
  end;

  //botao de reverter
  if br = 1 then begin
  //mudar cor do panel
  Panel5.Color := DesktopColor(Pt.X, Pt.Y);
  Panel5.Refresh;

  {Converte Pt para as coordenadas da tela }
  Pt.x := Round(Pt.x * (65535 / Screen.Width));
  Pt.y := Round(Pt.y * (65535 / Screen.Height));

  br_pos_x.Text := IntToStr(Pt.x);
  br_pos_y.Text := IntToStr(Pt.y);
  br_cor.Text := ColorToString(Panel5.Color);
  end;

    //sensor posição
  if sp = 1 then begin
  sp_pos_x.Color := DesktopColor(Pt.X, Pt.Y);
  sp_pos_y.Color := DesktopColor(Pt.X, Pt.Y);
  sp_pos_x.Refresh;
  sp_pos_y.Refresh;
  
  {Converte Pt para as coordenadas da tela }
  Pt.x := Round(Pt.x * (65535 / Screen.Width));
  Pt.y := Round(Pt.y * (65535 / Screen.Height));

  sp_pos_x.Text := IntToStr(Pt.x);
  sp_pos_y.Text := IntToStr(Pt.y);
  end;

      //sensor posicao cor de venda
  if sp_vcor = 1 then begin
  //mudar cor do panel
  Panel7.Color := DesktopColor(Pt.X, Pt.Y);
  Panel7.Refresh;
  spv_cor.Text := ColorToString(Panel7.Color);
  end;

        //sensor posicao cor de compra
  if sp_ccor = 1 then begin
  //mudar cor do panel
  Panel6.Color := DesktopColor(Pt.X, Pt.Y);
  Panel6.Refresh;
  spc_cor.Text := ColorToString(Panel6.Color);
  end;

    //sensor 1
  if s1 = 1 then begin
  {Converte Pt para as coordenadas da tela }
  Pt.x := Round(Pt.x * (65535 / Screen.Width));
  Pt.y := Round(Pt.y * (65535 / Screen.Height));

  s1_pos_x.Text := IntToStr(Pt.x);
  s1_pos_y.Text := IntToStr(Pt.y);
  end;

     //sensor 1 cor de venda
  if s1v_cor = 1 then begin
  //mudar cor do panel
  Panel4.Color := DesktopColor(Pt.X, Pt.Y);
  Panel4.Refresh;
  s1_vcor.Text := ColorToString(Panel4.Color);
  end;

       //sensor 1 cor de compra
  if s1c_cor = 1 then begin
  //mudar cor do panel
  Panel3.Color := DesktopColor(Pt.X, Pt.Y);
  Panel3.Refresh;
  s1_ccor.Text := ColorToString(Panel3.Color);
  end;


  //teste localizar cor pelas cordenadas
  {t1 :=  StrToInt(vpos_x.Text);
  t2 :=  StrToInt(vpos_y.Text);
  tx3 := Round(t1 / (65535 / Screen.Width));
  ty4 := Round(t2 / (65535 / Screen.Height));
  Panel3.Color := DesktopColor(tx3,ty4);
  Panel3.Caption := IntToStr(tx3)+' - '+IntToStr(ty4);
  Panel3.Refresh;  }
  //fim de teste

  //verifica se clicou fora do form
  if((GetAsyncKeyState(VK_LBUTTON) and 1)=1) then
  begin
    if (mouse.CursorPos.x<Form_Principal.Left) or (mouse.CursorPos.x>(Form_Principal.left+Form_Principal.Width)) or (mouse.CursorPos.y<Form_Principal.Top) or (mouse.CursorPos.y>(Form_Principal.Top+Form_Principal.Height)) then
      begin
          if  s1v_cor = 1 then begin
            s1v_cor := 0;
          end;
          if  s1c_cor = 1 then begin
            s1c_cor := 0;
          end;

          if  sp_vcor = 1 then begin
            sp_vcor := 0;
          end;
          if  sp_ccor = 1 then begin
            sp_ccor := 0;
          end;
      end;
  end;
end;

procedure TForm_Principal.FormCreate(Sender: TObject);
begin
SetWindowPos(Form_Principal.handle, HWND_TOPMOST, Form_Principal.Left,Form_Principal.Top, Form_Principal.Width, Form_Principal.Height, 0);
end;

procedure TForm_Principal.FormShow(Sender: TObject);
begin
bc := 0;
bv := 0;
s1 := 0;
s1c_cor := 0;
s1v_cor := 0;
iniciar := 0;
posicao := 0;
posicao_robo := 0;
Label7.Caption := IntToStr(posicao);

ClientDataSet1.Active := true;
ClientDataSet1.Open;
ClientDataSet1.LoadFromFile('cadastro.xml');
BitBtn1.Caption := '';
//atualiza cor do panel conforme o salvor
if cor.Text <> '' then begin
Panel1.Color := StringToColor(cor.Text);
end;

if vcor.Text <> '' then begin
Panel2.Color := StringToColor(vcor.Text);
end;

if br_cor.Text <> '' then begin
Panel5.Color := StringToColor(br_cor.Text);
end;
//fim


//painel dos sensores  posição
if spc_cor.Text <> '' then begin
Panel6.Color := StringToColor(spc_cor.Text);
end;

if spv_cor.Text <> '' then begin
Panel7.Color := StringToColor(spv_cor.Text);
end;
//fim

//painel dos sensores
if s1_ccor.Text <> '' then begin
Panel3.Color := StringToColor(s1_ccor.Text);
end;

if s1_vcor.Text <> '' then begin
Panel4.Color := StringToColor(s1_vcor.Text);
end;
//fim
end;

procedure TForm_Principal.btnbuscarClick(Sender: TObject);
begin
bc := 0;
end;

procedure TForm_Principal.Button1Click(Sender: TObject);
begin
bc := 1;
ClientDataSet1.Edit;
end;

procedure TForm_Principal.Button2Click(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(pos_x.Text), StrToInt(pos_y.Text), 0, 0);
end;

procedure TForm_Principal.Button5Click(Sender: TObject);
begin
bv := 1;
ClientDataSet1.Edit;
end;

procedure TForm_Principal.Button7Click(Sender: TObject);
begin
ClientDataSet1.SaveToFile('cadastro.xml');
end;

procedure TForm_Principal.Button4Click(Sender: TObject);
begin
bv := 0;
end;

procedure TForm_Principal.Button3Click(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(vpos_x.Text), StrToInt(vpos_y.Text), 0, 0);
{Simula o pressionamento do botãoesquerdo do mouse}
mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
{ Simula soltando o botãoesquerdo do mouse }
mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
end;

procedure TForm_Principal.Button6Click(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(vpos_x.Text), StrToInt(vpos_y.Text), 0, 0);
end;

procedure TForm_Principal.Button10Click(Sender: TObject);
begin
s1 := 1;
ClientDataSet1.Edit;
end;

procedure TForm_Principal.Panel4Click(Sender: TObject);
begin
  if s1v_cor = 0 then begin
  s1v_cor := 1;
  ClientDataSet1.Edit;
  end;
end;

procedure TForm_Principal.Button9Click(Sender: TObject);
begin
s1 := 0;
end;

procedure TForm_Principal.Panel3Click(Sender: TObject);
begin
  if s1c_cor = 0 then begin
  s1c_cor := 1;
  ClientDataSet1.Edit;
  end;
end;

procedure TForm_Principal.Button8Click(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(s1_pos_x.Text), StrToInt(s1_pos_y.Text), 0, 0);
end;

procedure TForm_Principal.BitBtn1Click(Sender: TObject);
begin
if iniciar = 0 then begin
  iniciar := 1 ;
  Label3.Caption:= 'Ligado' ;
  Label3.Color := clGreen;
end
else if iniciar = 1 then begin
  iniciar := 0 ;
  Label3.Caption:= 'Desligado' ;
  Label3.Color := clRed;
end;
end;

procedure TForm_Principal.Timer2Timer(Sender: TObject);
var t1,t2,tx3,ty4 :integer;
    v1,v2,vx3,vy4 :integer;
begin
//verificar posicao
v1 :=  StrToInt(sp_pos_x.Text);
v2 :=  StrToInt(sp_pos_y.Text);
vx3 := Round(v1 / (65535 / Screen.Width));
vy4 := Round(v2 / (65535 / Screen.Height));

sp_pos_x.Color := DesktopColor(vx3, vy4);
sp_pos_y.Color := DesktopColor(vx3, vy4);
sp_pos_x.Refresh;
sp_pos_y.Refresh;

Edit1.Text :=  ColorToString(DesktopColor(vx3,vy4));
//caso esteja comprado
if ColorToString(DesktopColor(vx3,vy4))  = spc_cor.Text then begin
   posicao := 1;
   Label15.Color := DesktopColor(vx3,vy4);
   label15.Refresh;
end;
//caso esteja vendido
if ColorToString(DesktopColor(vx3,vy4))  = spv_cor.Text then begin
   posicao := -1;
   Label15.Color := DesktopColor(vx3,vy4);
   label15.Refresh;
end;
//caso esteja zerado
if (ColorToString(DesktopColor(vx3,vy4)) <> spv_cor.Text) and (ColorToString(DesktopColor(vx3,vy4)) <> spc_cor.Text) then begin
   posicao := 0;
   Label15.Color := clWhite;
   label15.Refresh;
end;
Label7.Caption := IntToStr(posicao);


if iniciar = 1 then begin
  t1 :=  StrToInt(s1_pos_x.Text);
  t2 :=  StrToInt(s1_pos_y.Text);
  tx3 := Round(t1 / (65535 / Screen.Width));
  ty4 := Round(t2 / (65535 / Screen.Height));

  //se a cor for igual a cor de compra
  if (ColorToString(DesktopColor(tx3,ty4)) = s1_ccor.Text) then begin
      //verifica posicao
      //se estiver zerado ele compra
      if (posicao = 0) and (posicao_robo = 0) then begin
      posicao_robo:= 10;
      {Move o mouse}
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(pos_x.Text), StrToInt(pos_y.Text), 0, 0);
      {Simula o pressionamento do botãoesquerdo do mouse}
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
      { Simula soltando o botãoesquerdo do mouse }
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
      end;

      //se estiver vendido ele reverte
      if (posicao = -1) and (posicao_robo =20) then begin
      posicao_robo:= 10;
      {Move o mouse}
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(br_pos_x.Text), StrToInt(br_pos_y.Text), 0, 0);
      {Simula o pressionamento do botãoesquerdo do mouse}
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
      { Simula soltando o botãoesquerdo do mouse }
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
      end;

            //se estiver zerado na posição e vendido no robo(compra)
      if (posicao = 0) and (posicao_robo = 20) then begin
      posicao_robo:= 10;
      {Move o mouse}
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(pos_x.Text), StrToInt(pos_y.Text), 0, 0);
      {Simula o pressionamento do botãoesquerdo do mouse}
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
      { Simula soltando o botãoesquerdo do mouse }
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
      end;
  end;
  //se a cor for igual a cor de venda
  if (ColorToString(DesktopColor(tx3,ty4)) = s1_vcor.Text) then begin
      //verifica posicao
      //se estiver zerado ele vende
      if (posicao = 0) and (posicao_robo = 0) then begin
      posicao_robo:= 20;
      {Move o mouse}
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(vpos_x.Text), StrToInt(vpos_y.Text), 0, 0);
      {Simula o pressionamento do botãoesquerdo do mouse}
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
      { Simula soltando o botãoesquerdo do mouse }
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
      end;


      //se estiver comprado ele reverte
      if (posicao = 1) and (posicao_robo = 10) then begin
      posicao_robo:= 20;
      {Move o mouse}
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(br_pos_x.Text), StrToInt(br_pos_y.Text), 0, 0);
      {Simula o pressionamento do botãoesquerdo do mouse}
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
      { Simula soltando o botãoesquerdo do mouse }
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
      end;

            //se estiver zerado na posição e comprado no robo (vende )
      if (posicao = 0) and (posicao_robo = 10) then begin
      posicao_robo:= 20;
      {Move o mouse}
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(vpos_x.Text), StrToInt(vpos_y.Text), 0, 0);
      {Simula o pressionamento do botãoesquerdo do mouse}
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
      { Simula soltando o botãoesquerdo do mouse }
      mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
      end;
  end;
end;
end;

procedure TForm_Principal.Button13Click(Sender: TObject);
begin
br := 1;
ClientDataSet1.Edit;
end;

procedure TForm_Principal.Button12Click(Sender: TObject);
begin
br := 0;
end;

procedure TForm_Principal.Button14Click(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(br_pos_x.Text), StrToInt(br_pos_y.Text), 0, 0);
end;


procedure TForm_Principal.Button15Click(Sender: TObject);
begin
sp := 1;
ClientDataSet1.Edit;
end;

procedure TForm_Principal.Button11Click(Sender: TObject);
begin
sp := 0;
end;

procedure TForm_Principal.Button16Click(Sender: TObject);
begin
{Move o mouse}
Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, StrToInt(sp_pos_x.Text), StrToInt(sp_pos_y.Text), 0, 0);
end;

procedure TForm_Principal.Panel7Click(Sender: TObject);
begin
  if sp_vcor = 0 then begin
  sp_vcor := 1;
  ClientDataSet1.Edit;
  end;
end;

procedure TForm_Principal.Panel6Click(Sender: TObject);
begin
  if sp_ccor = 0 then begin
  sp_ccor := 1;
  ClientDataSet1.Edit;
  end;
end;

end.

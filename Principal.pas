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
    Label3: TLabel;
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
    Label7: TLabel;
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
    ClientDataSet1bc_pos_x: TStringField;
    ClientDataSet1bc_pos_y: TStringField;
    ClientDataSet1bc_cor: TStringField;
    ClientDataSet1bv_pos_x: TStringField;
    ClientDataSet1bv_pos_y: TStringField;
    ClientDataSet1bv_cor: TStringField;
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

  private

  public
   MouseDownSpot : TPoint;
   Capturing : bool;
  end;

var
  Form_Principal: TForm_Principal;
  Pt: TPoint;
  arq: TextFile;
  bc,bv: Integer;

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
  c := TCanvas.Create;
  try
    c.Handle := GetWindowDC(GetDesktopWindow);
    Result   := GetPixel(c.Handle, X, Y);
  finally
    c.Free;
  end;
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


  //verifica se clicou fora do form
  if((GetAsyncKeyState(VK_LBUTTON) and 1)=1) then
  begin
    if (mouse.CursorPos.x<Form_Principal.Left) or (mouse.CursorPos.x>(Form_Principal.left+Form_Principal.Width)) or (mouse.CursorPos.y<Form_Principal.Top) or (mouse.CursorPos.y>(Form_Principal.Top+Form_Principal.Height)) then
      begin
        //ShowMessage('Clicou fora do Form');
        //gravar possição e cor fechar dataset
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

ClientDataSet1.Active := true;
ClientDataSet1.Open;
ClientDataSet1.LoadFromFile('cadastro.xml');

//atualiza cor do panel conforme o salvor
if cor.Text <> '' then begin
Panel1.Color := StringToColor(cor.Text);
end;

if vcor.Text <> '' then begin
Panel2.Color := StringToColor(vcor.Text);
end;

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

end.

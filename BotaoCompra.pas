unit BotaoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm_botaoCompra = class(TForm)
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    MouseDownSpot : TPoint;
   Capturing : bool;
  end;

var
  Form_botaoCompra: TForm_botaoCompra;

implementation

{$R *.dfm}

procedure TForm_botaoCompra.FormShow(Sender: TObject);
begin
brush.Style := bsclear;
end;

procedure TForm_botaoCompra.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Capturing then begin
   Capturing := false;
   Form_botaoCompra.Left := Form_botaoCompra.Left - (MouseDownSpot.x -x);
   Form_botaoCompra.Top := Form_botaoCompra.Top - (MouseDownSpot.y - y);
 end;
end;

procedure TForm_botaoCompra.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
if Capturing then
   begin
    Form_botaoCompra.Left:= Form_botaoCompra.Left-(MouseDownSpot.x-x);
    Form_botaoCompra.Top:= Form_botaoCompra.Top - (MouseDownSpot.y-y);
  end;
end;

procedure TForm_botaoCompra.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
Capturing := true;
  MouseDownSpot.X := x;
  MouseDownSpot.Y := Y;
end;

end.

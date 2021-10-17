unit Primeiro_projeto_calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    N1: TEdit;
    N2: TEdit;
    RadioGroup1: TRadioGroup;
    result: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  var
  val1, val2, r: Integer;
begin
  val1 := strToInt(N1.Text);
  val2 := strToInt(N2.Text);
  if(RadioGroup1.ItemIndex = 0) then
  begin
    r := val1 + val2;
  end;
  if(RadioGroup1.ItemIndex = 1) then
  begin
    r := val1 - val2;
  end;
  if(RadioGroup1.ItemIndex = 2) then
  begin
    r := val1 * val2;
  end;
  if(RadioGroup1.ItemIndex = 3) then
  begin
    r := Trunc(val1 / val2);
  end;
  result.Text := IntToStr(r);
end;

end.

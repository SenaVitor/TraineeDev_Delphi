unit Quarto_projeto_imprimir_numeros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    N: TEdit;
    Memo1: TMemo;
    Button1: TButton;
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
  n1, i: Integer;
begin
  n1 := strToInt(N.Text);
  for i := 1 to n1 do
  begin
    if((i mod 3 = 0) and (i mod 5 = 0)) then
    begin
      Memo1.Lines.Append('FIZZBUZZ');
    end
    else if(i mod 3 = 0) then
    begin
      Memo1.Lines.Append('FIZZ');
    end
    else if(i mod 5 = 0) then
    begin
      Memo1.Lines.Append('BUZZ');
    end
    else
    begin
      Memo1.Lines.Append(intToStr(i));
    end;
  end;
end;

end.

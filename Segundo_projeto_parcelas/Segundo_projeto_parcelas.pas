unit Segundo_projeto_parcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Valor: TEdit;
    Parcelas: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
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
  val, resto: Double;
  par, res, i: Integer;
begin
  val := strToFloat(Valor.Text);
  par := strToInt(Parcelas.Text);
  res := Trunc(val/par);
  resto := val - par * res;
  if (Memo1.Lines.Count > 0) then
  begin
    while Memo1.Lines.Count > 0 do
    begin
      Memo1.Lines.Delete(0);
    end;
  end;
  if(resto = 0) then
  begin
    for i := 1 to par do
    begin
      Memo1.Lines.Append('Parcela ' + intToStr(i) + ' = ' + FloatToStr(res));
    end;
  end
  else
  begin
    for i := 1 to par-1 do
    begin
      Memo1.Lines.Append('Parcela ' + intToStr(i) + ' = ' + FloatToStr(res));
    end;
    Memo1.Lines.Append('Parcela ' + intToStr(par) + ' = ' + FloatToStr(res+resto));
  end;
end;

end.

unit Desafio_parcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Valor: TEdit;
    Parcelas: TEdit;
    Button1: TButton;
    LValor: TLabel;
    LParcelas: TLabel;
    TMemo: TMemo;
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
  val, res: Double;
  par, i: Integer;
begin
  val := strToFloat(Valor.Text);
  par := strToInt(Parcelas.Text);
  res := val/par;
  for i := 0 to par do
  begin
    TMemo.Lines.Append(FloatToStr(res));
  end;
end;

end.

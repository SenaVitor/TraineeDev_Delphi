unit Terceiro_projeto_lados_triangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Lado1: TEdit;
    Lado2: TEdit;
    Lado3: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Triangulo: TEdit;
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
  l1, l2, l3: Integer;
begin
  l1 := strToInt(Lado1.Text);
  l2 := strToInt(Lado2.Text);
  l3 := strToInt(Lado3.Text);
  if((l1+l2 < l3) or (l1+l3 < l2) or (l3+l2 < l1)) then
  begin
    Triangulo.Text := 'A soma de 2 lados deve ser maior que o terceiro';
  end
  else
  begin
    if((l1 = l2) and (l1 = l3) and (l2 = l3)) then
    begin
      Triangulo.Text := 'Triângulo Equilátero';
    end
    else if(((l1 = l3) or (l2 = l3)) or ((l3 = l1) or (l2 = l1)) or ((l3 = l2) or (l1 = l2))) then
    begin
      Triangulo.Text := 'Triângulo Isósceles';
    end
    else
    begin
      Triangulo.Text := 'Triângulo Escaleno';
    end;
  end;
end;

end.

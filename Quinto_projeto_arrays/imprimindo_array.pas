unit imprimindo_array;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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

type
  ECarros = (Gol, Palio, Corola, Fusca);

const
  ECarrosNomes: array [ECarros] of string = ('Gol', 'Palio', 'Corola', 'Fusca');

procedure TForm1.Button1Click(Sender: TObject);
var
  Carros: set of ECarros;
  Carro: ECarros;
begin
  Carros:= [Gol, Corola];
  Memo1.Clear;
  for Carro in Carros do
    Memo1.Lines.Add(ECarrosNomes[Carro]);
end;

end.

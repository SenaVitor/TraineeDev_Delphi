unit media_array;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
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
  a: array[0..20] of Integer;
  //Também pode ser inicializado com: SetLength(a, 20);
  i: Integer;
  media: Double;
begin
  media:= 0;
  Memo1.Clear;
  for I := 0 to High(a) do
  begin
    a[i]:= Random(100);
    media:= media + a[i];
    Memo1.Lines.Add('array[' + intToStr(i) + '] = ' + intToStr(a[i]));
  end;
  media:= media/high(a);
  Memo1.Lines.Add('Média = ' + FloatToStr(media));
end;

end.

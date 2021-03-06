unit Quinto_desafio_notas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TForm1 = class(TForm)
    EditValor: TEdit;
    Label1: TLabel;
    BtnSacar: TButton;
    Memo1: TMemo;
    Label2: TLabel;
    procedure BtnSacarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Sacar(Valor: Integer): string;

var
  ValorAux, I: Integer;
  Notas: TList<Integer>;
  Saida: String;

begin
  if(Valor <= 3) then
  begin
    Result := 'O valor deve ser maior que 2 e diferente de 3';
  end
  else
  begin
    Saida := '';
    Notas := TList<Integer>.Create;
    ValorAux := Valor;
    while ValorAux > 0 do
    begin
      if (ValorAux mod  100) = 0 then
      begin
        Notas.Add(100);
        ValorAux := ValorAux - 100;
      end
      else if (ValorAux mod 50) = 0 then
      begin
        Notas.Add(50);
        ValorAux := ValorAux - 50;
      end
      else if (ValorAux mod 20) = 0 then
      begin
        Notas.Add(20);
        ValorAux := ValorAux - 20;
      end
      else if (ValorAux mod 10) = 0 then
      begin
        Notas.Add(10);
        ValorAux := ValorAux - 10;
      end
      else if (ValorAux mod 5) = 0 then
      begin
        Notas.Add(5);
        ValorAux := ValorAux - 5;
      end
      else if ((ValorAux mod 2) = 0) or (ValorAux - 2 >= 0) then
      begin
        Notas.Add(2);
        ValorAux := ValorAux - 2;
      end;
    end;
    Notas.Reverse;
    for I := 0 to Notas.Count-1 do
    begin
      if(Saida = '') then
      begin
        Saida := Notas[I].ToString;
      end
      else
      begin
        Saida := Saida + ', ' + Notas[I].ToString;
      end;
    end;
    Result := Saida;
  end;
end;

procedure TForm1.BtnSacarClick(Sender: TObject);
begin
  Memo1.Clear;
  Memo1.Lines.Add(Sacar(StrToInt(EditValor.Text)));
end;

end.

unit Quarto_desafio_criptografar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    EditTexto: TEdit;
    Label1: TLabel;
    BtnCriptografar: TButton;
    Label2: TLabel;
    Memo1: TMemo;
    procedure BtnCriptografarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function Criptografar(const Texto: string): string;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function Criptografar(const Texto: string): string;

var
  I, Cont, Resto: Integer;
  Linha: String;
  CripTexto, NovaFrase: TStringList;

begin
  if(Texto.Length < 12) then
  begin
    Result := 'O texto deve ter no m?nimo 12 caracteres';
  end
  else
  begin
    CripTexto := TStringList.Create;
    NovaFrase := TStringList.Create;
    Cont := 8;
    Resto := 0;
    for I := 1 to Length(Texto) do
    begin
      if(Texto[I] = ' ') then
      begin
        Linha := Linha + '@';
      end
      else
      begin
        Linha := Linha + Texto[I];
      end;
      if(I = Cont) then
      begin
        CripTexto.Add(Linha);
        Linha := '';
        if(Cont < Length(Texto)) then
          Cont := Cont + 8;
      end;
      if(I = Length(Texto)) then
      begin
        Resto := Cont - I;
        while Resto > 0 do
        begin
          Linha := Linha + '@';
          Resto := Resto - 1;
        end;
        CripTexto.Add(Linha);
      end;
    end;
    Linha := '';
    for I := 1 to 8 do
    begin         
      for Cont := 0 to CripTexto.Count - 1 do
      begin  
        Linha := Linha + CripTexto[Cont][I];
      end;
    end;
    NovaFrase.Add(Linha);
    Result:= NovaFrase.Text;
    CripTexto.Free;
    NovaFrase.Free;
  end;
end;

procedure TForm1.BtnCriptografarClick(Sender: TObject);
begin
  Memo1.Lines.Add(Criptografar(EditTexto.Text));
end;

end.

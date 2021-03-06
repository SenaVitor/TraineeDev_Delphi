unit Desafio_IRRF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    EditSalario: TEdit;
    EditIRRF: TEdit;
    LblIRRF: TLabel;
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

function CalculaIRRF(SalarioBase: Currency): Currency;

Var
  Faixa, Deducao: Currency;

begin
  if SalarioBase <= 1903.98 then
  begin
    Result := 0
  end
  else
  begin
    if SalarioBase <= 2826.65 then
    begin
      Faixa := 0.075;
      Deducao := 142.8;
    end
    else if SalarioBase <= 3751.05 then
    begin
      Faixa := 0.15;
      Deducao := 354.8;
    end
    else if SalarioBase <= 4664.68 then
    begin
      Faixa := 0.225;
      Deducao := 636.13;
    end
    else
    begin
      Faixa := 0.275;
      Deducao := 869.36;
    end;
    Result := SalarioBase * Faixa - Deducao;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  EditIRRF.Text := FloatToStr(CalculaIRRF(StrToFloat(EditSalario.Text)));
end;

end.

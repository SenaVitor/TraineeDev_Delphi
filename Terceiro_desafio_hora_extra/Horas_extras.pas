  unit Horas_extras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BtnCalcular: TButton;
    Feriado: TCheckBox;
    EditData: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditCod: TEdit;
    Label3: TLabel;
    EditHoras: TEdit;
    BtnAdicionar: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  RHorasExtras = Record
    Cod: Integer;
    Tempo: Double;
    TempoFeriado: Double;
    Valor: Double;
    ValorFeriado: Double;
  End;

var
  HorasExtras : array of RHorasExtras;
  I : Integer;
  NovoFuncionario: bool;

procedure TForm1.BtnAdicionarClick(Sender: TObject);
begin
  NovoFuncionario := true;
  for I := 0 to Length(HorasExtras) -1 do
  begin
    if((StrToInt(EditCod.Text) = HorasExtras[I].Cod) and (Length(HorasExtras) > 1)) then
    begin
      NovoFuncionario := false;
      if(Feriado.Checked) then
      begin
        HorasExtras[I].TempoFeriado := HorasExtras[I].TempoFeriado + StrToFloat(EditHoras.Text);
        HorasExtras[I].ValorFeriado := HorasExtras[I].TempoFeriado/60 * 20;
      end
      else
      begin
        HorasExtras[I].Tempo := HorasExtras[I].Tempo + StrToFloat(EditHoras.Text);
        HorasExtras[I].Valor := HorasExtras[I].Tempo/60 * 10;
      end;
    end;
  end;
  if(NovoFuncionario = true) then
  begin
    I := Length(HorasExtras) -1;
    HorasExtras[I].Cod := StrToInt(EditCod.Text);
    if(Feriado.Checked) then
    begin
      HorasExtras[I].TempoFeriado := StrToFloat(EditHoras.Text);
      HorasExtras[I].ValorFeriado := HorasExtras[I].TempoFeriado/60 * 20;
    end
    else
    begin
      HorasExtras[I].Tempo := StrToFloat(EditHoras.Text);
      HorasExtras[I].Valor := HorasExtras[I].Tempo/60 * 10;
    end;
    SetLength(HorasExtras, Length(HorasExtras) + 1);
  end;
end;

procedure TForm1.BtnCalcularClick(Sender: TObject);
begin
  for I := 0 to Length(HorasExtras) -2 do
  begin
    Memo1.Lines.Add('C?digo do funcion?rio: ' + IntToStr(HorasExtras[I].Cod));
    Memo1.Lines.Add('Tempo das horas extras 50%: ' + FloatToStr(HorasExtras[I].Tempo) + ' Minutos');
    Memo1.Lines.Add('Valor das horas extras 50%: ' + FloatToStr(HorasExtras[I].Valor) + ' Reais');
    Memo1.Lines.Add('Tempo das horas extras 100%: ' + FloatToStr(HorasExtras[I].TempoFeriado) + ' Minutos');
    Memo1.Lines.Add('Valor das horas extras 100%: ' + FloatToStr(HorasExtras[I].ValorFeriado) + ' Reais');
    Memo1.Lines.Add('');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SetLength(HorasExtras, 1);
end;

end.

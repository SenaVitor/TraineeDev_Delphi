program Desafio_horas_extras;

uses
  Vcl.Forms,
  Horas_extras in 'Horas_extras.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

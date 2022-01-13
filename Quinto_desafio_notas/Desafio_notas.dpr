program Desafio_notas;

uses
  Vcl.Forms,
  Quinto_desafio_notas in 'Quinto_desafio_notas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

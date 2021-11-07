program Projeto_contas;

uses
  Vcl.Forms,
  Sexto_projeto_contas in 'Sexto_projeto_contas.pas' {Form1},
  Contas in 'Contas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

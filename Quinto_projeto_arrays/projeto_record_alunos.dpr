program projeto_record_alunos;

uses
  Vcl.Forms,
  record_alunos in 'record_alunos.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

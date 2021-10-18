program parcelas;

uses
  Vcl.Forms,
  Primeiro_projeto_calculadora in 'Primeiro_projeto_calculadora.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

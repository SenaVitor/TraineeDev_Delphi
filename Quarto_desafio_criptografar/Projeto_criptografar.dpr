program Projeto_criptografar;

uses
  Vcl.Forms,
  Quarto_desafio_criptografar in 'Quarto_desafio_criptografar.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

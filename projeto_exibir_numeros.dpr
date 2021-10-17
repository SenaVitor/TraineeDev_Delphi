program projeto_exibir_numeros;

uses
  Vcl.Forms,
  Quarto_projeto_imprimir_numeros in 'Quarto_projeto_imprimir_numeros.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

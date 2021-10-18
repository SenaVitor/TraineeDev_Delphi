program projeto_triangulo;

uses
  Vcl.Forms,
  Terceiro_projeto_lados_triangulo in 'Terceiro_projeto_lados_triangulo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

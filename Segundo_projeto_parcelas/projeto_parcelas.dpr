program projeto_parcelas;

uses
  Vcl.Forms,
  Segundo_projeto_parcelas in 'Segundo_projeto_parcelas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

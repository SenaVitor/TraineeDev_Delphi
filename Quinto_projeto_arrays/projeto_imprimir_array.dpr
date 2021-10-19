program projeto_imprimir_array;

uses
  Vcl.Forms,
  imprimindo_array in 'imprimindo_array.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

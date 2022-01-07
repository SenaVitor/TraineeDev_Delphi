program Segundo_desafio_produtos;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Produtos in 'Produtos.pas' ;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

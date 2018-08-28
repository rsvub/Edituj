program Edituj;

uses
  Vcl.Forms,
  edit in 'edit.pas' {Form1},
  edit2 in 'edit2.pas' {Okno};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TOkno, Okno);
  Application.Run;
end.

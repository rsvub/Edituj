unit edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Edit: TEdit;
    Tlacitko: TButton;
    Panel1: TPanel;
    Napis: TLabel;
    Volba: TCheckBox;
    Cas: TTimer;
    Konec: TButton;
    OtevriOkno: TButton;
    procedure TlacitkoClick(Sender: TObject);
    procedure CasTimer(Sender: TObject);
    procedure KonecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses edit2;

procedure TForm1.CasTimer(Sender: TObject);
begin
  Konec.Visible := True;
  Cas.Enabled := True;
end;

procedure TForm1.KonecClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.TlacitkoClick(Sender: TObject);
begin
  Napis.Caption := Edit.Text;
end;

end.

unit edit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOkno = class(TForm)
    Ukoncit: TButton;
    Zapni: TRadioButton;
    Vypni: TRadioButton;
    Timer: TTimer;
    Panel: TPanel;
    Play: TRadioButton;
    Stop: TRadioButton;
    procedure UkoncitClick(Sender: TObject);
    procedure ZapniClick(Sender: TObject);
    procedure VypniClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PlayClick(Sender: TObject);
    procedure StopClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Okno: TOkno;
  Cislo : Integer;

implementation

{$R *.dfm}

procedure TOkno.FormCreate(Sender: TObject);
begin
  Cislo := 0;
end;

procedure TOkno.PlayClick(Sender: TObject);
begin
  Timer.Enabled := True;
end;

procedure TOkno.StopClick(Sender: TObject);
begin
  Timer.Enabled := False;
end;

procedure TOkno.TimerTimer(Sender: TObject);
begin
  Cislo := Cislo + 1;
  if Cislo = 1 then
    Panel.BevelOuter := bvNone;
  if Cislo = 2 then
    Panel.BevelOuter := bvLowered;
  if Cislo = 3 then
    Panel.BevelOuter := bvNone;
  if Cislo = 4 then
    begin
      Panel.BevelOuter := bvRaised;
      Cislo := 0;
    end;
end;

procedure TOkno.UkoncitClick(Sender: TObject);
begin
  Close;
end;

procedure TOkno.VypniClick(Sender: TObject);
begin
  Ukoncit.Visible := False;
end;

procedure TOkno.ZapniClick(Sender: TObject);
begin
  Ukoncit.Visible := True;
end;

end.

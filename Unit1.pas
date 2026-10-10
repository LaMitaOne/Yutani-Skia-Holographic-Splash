unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Yutani.SkiaIntro, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FSkiaIntro: TYutaniSkiaIntro;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  LogoPath: string;
begin
  // Standard Yutani Intro on startup
  LogoPath := ExtractFilePath(ParamStr(0)) + 'yutani_logo.png';

  // Create and immediately start the intro (AAutoStart=True).
  // It runs in its own thread, so it does not block the VCL main thread.
  FSkiaIntro := TYutaniSkiaIntro.Create(LogoPath, 'YUTANI', True);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  NewText, NewLogo: string;
begin
  // Stop and free the previous intro instance if it exists
  if Assigned(FSkiaIntro) then
  begin
    FSkiaIntro.Stop;
    FSkiaIntro.Free;
  end;

  // Get text from Edit, fallback to 'YUTANI' if empty
  NewText := Trim(Edit1.Text);
  if NewText = '' then
    NewText := 'YUTANI';

  // Select a new PNG logo using OpenDialog
  NewLogo := '';
  if OpenDialog1.Execute then
    NewLogo := OpenDialog1.FileName;

  // Create and start the new intro with the custom parameters
  FSkiaIntro := TYutaniSkiaIntro.Create(NewLogo, NewText, True);
end;

end.

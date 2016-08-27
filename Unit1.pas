unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if Opendialog1.Execute then begin
memo1.Lines.LoadFromFile(opendialog1.FileName);
memo1.SetFocus;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then begin
memo1.Lines.SaveToFile(savedialog1.FileName);
memo1.SetFocus;
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
memo1.Clear;
end;

end.

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses gnugettext;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(_('Changing language'));
  UseLanguage ('RU');
  Retranslatecomponent(self);
end;

procedure TForm1.Button2Click(Sender: TObject);
var s:string;
    d:integer;
begin
  s:=_('apples');
  d:=7;
  showmessage(format(_('Count of %s : %d'),[s,d]));
end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer;
    s:string;
begin
  s:=emptystr;
  for i:=1 to 11 do
    s:=s+format(('%d %s'),[i, ngettext('apple', 'apples', i)])+slinebreak;
  i:=21;
  s:=s+format(('%d %s'),[i, ngettext('apple', 'apples', i)]);
  showmessage(s);
end;

procedure TForm1.Button4Click(Sender: TObject);
var s1,s2:string;
begin
  s1:=_('bow_music');
  s2:=_('bow_weapon');
  Showmessage(
    format(_('Use %s to shoot enemies.'),[s2]) + slinebreak +
    format(_('Use %s to play violin.'),[s1]));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  UseLanguage('EN');
  translatecomponent(self);
end;

end.

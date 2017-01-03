unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Edit6.Clear;
  Form1.Edit6.Text:='stream_data[]: "'+Edit1.text+'|'+form1.Edit2.text+'|'+form1.Edit3.text+'|'+form1.Edit4.text+'|'+form1.Edit5.text+'|0|"';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Form1.Edit1.Clear;
   Form1.Edit2.Clear;
   Form1.Edit3.Clear;
   Form1.Edit4.Clear;
   Form1.Edit5.Clear;
   Form1.Edit6.Clear;
   Form1.RadioButton1.Checked:=true;
end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
   //Ru
   Form1.Label1.Caption:='Ссылка на поток';
   Form1.Label2.Caption:='Название';
   Form1.Label3.Caption:='Жанр';
   Form1.Label4.Caption:='Битрейт';
   Form1.Label5.Caption:='Страна';
   Form1.Label6.Caption:='Результат';
   Form1.Button1.Caption:='Собрать';
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
    //Eng
    Form1.Label1.Caption:='Link to stream';
    Form1.Label2.Caption:='Name';
    Form1.Label3.Caption:='Genre';
    Form1.Label4.Caption:='Bitrate';
    Form1.Label5.Caption:='Country';
    Form1.Label6.Caption:='Result';
    Form1.Button1.Caption:='Make';
end;

end.


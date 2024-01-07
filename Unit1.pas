unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    DataLaundry1: TMenuItem;
    DataADmin1: TMenuItem;
    DataDetailPemesanan1: TMenuItem;
    DatapaketPelayanan1: TMenuItem;
    DataPelanggan1: TMenuItem;
    DataPemesanan1: TMenuItem;
    DataTransaksi1: TMenuItem;
    grp1: TGroupBox;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    e1: TEdit;
    e2: TEdit;
    Logout1: TMenuItem;
    img1: TImage;
    procedure DataADmin1Click(Sender: TObject);
    procedure DataDetailPemesanan1Click(Sender: TObject);
    procedure DatapaketPelayanan1Click(Sender: TObject);
    procedure DataPelanggan1Click(Sender: TObject);
    procedure DataPemesanan1Click(Sender: TObject);
    procedure DataTransaksi1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm1.DataADmin1Click(Sender: TObject);
begin
if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm1.DataDetailPemesanan1Click(Sender: TObject);
begin
  if Form3=nil then
  Form3:=TForm3.Create(Application);
  Form3.Show;
end;

procedure TForm1.DatapaketPelayanan1Click(Sender: TObject);
begin
  if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm1.DataPelanggan1Click(Sender: TObject);
begin
    if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TForm1.DataPemesanan1Click(Sender: TObject);
begin
    if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;

procedure TForm1.DataTransaksi1Click(Sender: TObject);
begin
     if Form7=nil then
  Form7:=TForm7.Create(Application);
  Form7.Show;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if (e1.Text='admin') and (e2.Text='1234') then
   DataLaundry1.Visible:=True;
   grp1.Visible:=False;
   Logout1.Visible:=True;
end;

procedure TForm1.Logout1Click(Sender: TObject);
begin
DataLaundry1.Visible:=False;
   grp1.Visible:=True;
   Logout1.Visible:=False;
    Showmessage(' BERHASIL LOGOUT');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
      if Form8=nil then
  Form8:=TForm8.Create(Application);
  Form8.Show;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;


  
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if Form3=nil then
  Form3:=TForm3.Create(Application);
  Form3.Show;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
if Form7=nil then
  Form7:=TForm7.Create(Application);
  Form7.Show;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
if Form8=nil then
  Form8:=TForm8.Create(Application);
  Form8.Show;
end;

end.

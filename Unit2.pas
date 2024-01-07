unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    Simpan: TButton;
    Edit: TButton;
    Hapus: TButton;
    Print: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure SimpanClick(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure HapusClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure PrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id : string;

implementation

{$R *.dfm}

procedure TForm2.SimpanClick(Sender: TObject);
begin
   zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into dokter values("'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from dokter');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm2.EditClick(Sender: TObject);
begin
zqry1.Edit;
zqry1.FieldByName('id_dokter').Text:=e2.Text;
zqry1.FieldByName('nama').Text:=e3.Text;
zqry1.FieldByName('telepon').Text:=e4.Text;
zqry1.FieldByName('email').Text:=e5.Text;

end;

procedure TForm2.HapusClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM dokter WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from dokter');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
   e2.Text:=zqry1.FieldList[1].AsString;
   e3.Text:=zqry1.FieldList[2].AsString;
   e4.Text:=zqry1.FieldList[3].AsString;
   e5.Text:=zqry1.FieldList[4].AsString;
 

end;

procedure TForm2.PrintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
 
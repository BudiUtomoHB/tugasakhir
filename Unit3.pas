unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnPrint: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btnHapusClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id : string;

implementation

{$R *.dfm}

procedure TForm3.btnHapusClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM detail_pemesanan WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from detail_pemesanan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm3.btnSimpanClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into jadwal values(,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from jadwal');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm3.btnEditClick(Sender: TObject);
begin
 zqry1.Edit;
zqry1.FieldByName('id_jadwal').Text:=e1.Text;
zqry1.FieldByName('hari').Text:=e2.Text;
zqry1.FieldByName('jam_mulai').Text:=e3.Text;
zqry1.FieldByName('jam_selesai').Text:=e4.Text;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
 e1.Text:=zqry1.FieldList[1].AsString;
   e2.Text:=zqry1.FieldList[2].AsString;
   e3.Text:=zqry1.FieldList[3].AsString;
   e4.Text:=zqry1.FieldList[4].AsString;

end;

procedure TForm3.btnPrintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.

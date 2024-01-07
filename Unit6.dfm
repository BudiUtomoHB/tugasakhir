object Form6: TForm6
  Left = 550
  Top = 271
  Width = 1305
  Height = 675
  Caption = 'poliklinik'
  Color = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl3: TLabel
    Left = 40
    Top = 48
    Width = 52
    Height = 13
    Caption = 'id_poliklinik'
  end
  object lbl4: TLabel
    Left = 40
    Top = 72
    Width = 70
    Height = 13
    Caption = 'nama_poliklinik'
  end
  object lbl5: TLabel
    Left = 40
    Top = 104
    Width = 36
    Height = 13
    Caption = 'gedung'
  end
  object lbl6: TLabel
    Left = 40
    Top = 128
    Width = 26
    Height = 13
    Caption = 'lantai'
  end
  object e1: TEdit
    Left = 152
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 152
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e3: TEdit
    Left = 152
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e4: TEdit
    Left = 152
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnSimpan: TButton
    Left = 72
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 168
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 256
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btnHapusClick
  end
  object btnPrint: TButton
    Left = 344
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 7
    OnClick = btnPrintClick
  end
  object dbgrd1: TDBGrid
    Left = 88
    Top = 344
    Width = 977
    Height = 193
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_puskesmas'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\budi\libmysql.dll'
    Left = 512
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from poliklinik')
    Params = <>
    Left = 512
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 512
    Top = 144
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.567053032400000000
    ReportOptions.LastChange = 45261.567053032400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 584
    Top = 40
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 297.000000000000000000
      PaperHeight = 420.000000000000000000
      PaperSize = 8
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Memo17: TfrxMemoView
          Width = 1122.520410000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PEMESANAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 90.708720000000000000
        Width = 1122.520410000000000000
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kd_Pemesanan')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kd_Pelanggan')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kat_Pemesanan')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 343.937230000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ket_Pemesanan')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 464.882190000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl_Pemesanan')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.827150000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl_Pengambilan')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 714.331170000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kd_Admin')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 797.480830000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status_Pemesanan')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 1122.520410000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'kode_pemesanan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kode_pemesanan"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'kode_pelanggan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kode_pelanggan"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 222.992270000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'kategori_pemesanan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."kategori_pemesanan"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 343.937230000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ket_pemesanan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."ket_pemesanan"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 464.882190000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_pemesanan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."tgl_pemesanan"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 585.827150000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_pengambilan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."tgl_pengambilan"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 714.331170000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'kode_admin'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kode_admin"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 797.480830000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'status_pemesanan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."status_pemesanan"]')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 584
    Top = 112
  end
end

object Form5: TForm5
  Left = 392
  Top = 269
  Width = 1305
  Height = 675
  Caption = 'pasien'
  Color = clMoneyGreen
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
    Width = 45
    Height = 13
    Caption = 'id_pasien'
  end
  object lbl4: TLabel
    Left = 40
    Top = 72
    Width = 26
    Height = 13
    Caption = 'nama'
  end
  object lbl5: TLabel
    Left = 40
    Top = 104
    Width = 62
    Height = 13
    Caption = 'tanggal_lahir'
  end
  object lbl6: TLabel
    Left = 40
    Top = 136
    Width = 32
    Height = 13
    Caption = 'alamat'
  end
  object e1: TEdit
    Left = 136
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e2: TEdit
    Left = 136
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e3: TEdit
    Left = 136
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object e4: TEdit
    Left = 136
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btnSimpan: TButton
    Left = 64
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btnSimpanClick
  end
  object btnEdit: TButton
    Left = 168
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = btnEditClick
  end
  object btnHapus: TButton
    Left = 256
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btnHapusClick
  end
  object btnPrint: TButton
    Left = 344
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 7
    OnClick = btnPrintClick
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 280
    Width = 785
    Height = 153
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
      'select * from pasien')
    Params = <>
    Left = 512
    Top = 80
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 512
    Top = 128
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.651934571800000000
    ReportOptions.LastChange = 45260.651934571800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 608
    Top = 56
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 83.149660000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode_Pelanggan')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama_Pelanggan')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 279.685220000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No_Pelanggan')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 381.732530000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode_Pelanggan')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'kode_pelanggan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."kode_pelanggan"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'nama_pelanggan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."nama_pelanggan"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 279.685220000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'no_pelanggan'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."no_pelanggan"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."alamat"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 506.457020000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_daftar'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxdbdtst1."tgl_daftar"]')
          ParentFont = False
        end
      end
      object Memo11: TfrxMemoView
        Top = 15.118120000000000000
        Width = 789.921770000000000000
        Height = 18.897650000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          'LAPORAN PELANGGAN')
        ParentFont = False
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 608
    Top = 120
  end
end

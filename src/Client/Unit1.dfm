object Form1: TForm1
  Left = 37
  Top = 77
  Caption = 'Client'
  ClientHeight = 362
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    00000100200000000000000000000000000000000000000000000000000000FF
    0CFF000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000FF0CFF00FF0CFF00FF
    0CFF000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000FF0CFF0000000000FF0CFF00FF
    0CFF000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000FF0CFF000000000000000000FF0CFF00FF
    0CFF000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000FF0CFF00000000000000000000000000FF0CFF00FF
    0CFF000000000000000000000000000000000000000000000000000000000000
    00000000000000FF0CFF0000000000000000000000000000000000FF0CFF00FF
    0CFF000000000000000000000000000000000000000000000000000000000000
    000000FF0CFF000000000000000000000000000000000000000000FF0CFF00FF
    0CFF0000000000000000000000000000000000000000000000000000000000FF
    0CFF00000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF00000000000000000000000000000000000000000000000000FF0CFF0000
    000000000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF000000000000000000000000000000000000000000FF0CFF000000000000
    000000000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF0000000000000000000000000000000000FF0CFF00000000000000000000
    000000000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF00000000000000000000000000FF0CFF0000000000000000000000000000
    000000000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF000000000000000000FF0CFF000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF0000000000FF0CFF00000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000FF0CFF00FF
    0CFF00FF0CFF0000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000FF0CFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000007FFE
    00007FFC00007FFA00007FF600007FEE00007FDE00007FBE00007F7E00007EFE
    00007DFE00007BFE000077FE00006FFE00005FFE00003FFE0000FFFF0000}
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = -1
    Width = 30
    Height = 14
    Caption = 'Client'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 495
    Top = -1
    Width = 32
    Height = 13
    Caption = 'Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 8
    Top = 292
    Width = 383
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Button1: TButton
    Left = 397
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Send'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 319
    Width = 193
    Height = 40
    Caption = 'New coonection'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 207
    Top = 319
    Width = 185
    Height = 40
    Caption = 'Create Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 398
    Top = 319
    Width = 74
    Height = 40
    Caption = 'Enclosed(Includes Files)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    WordWrap = True
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 495
    Top = 319
    Width = 75
    Height = 40
    Caption = 'Clear Log'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button5Click
  end
  object ListBox1: TListBox
    Left = 495
    Top = 18
    Width = 314
    Height = 268
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 14
    ParentFont = False
    TabOrder = 6
  end
  object ListBox2: TListBox
    Left = 8
    Top = 18
    Width = 464
    Height = 268
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 14
    ParentFont = False
    TabOrder = 7
  end
  object Button6: TButton
    Left = 576
    Top = 319
    Width = 90
    Height = 40
    Caption = 'Open Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button6Click
  end
  object Edit2: TEdit
    Left = 495
    Top = 292
    Width = 314
    Height = 21
    TabOrder = 9
  end
  object Button7: TButton
    Left = 672
    Top = 319
    Width = 89
    Height = 40
    Caption = 'Admin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 768
    Top = 319
    Width = 41
    Height = 40
    Caption = 'Ping'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button8Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnRead = ClientSocket1Read
    Left = 552
    Top = 224
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 168
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnListen = ServerSocket1Listen
    OnAccept = ServerSocket1Accept
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    OnClientError = ServerSocket1ClientError
    Left = 624
    Top = 224
  end
end

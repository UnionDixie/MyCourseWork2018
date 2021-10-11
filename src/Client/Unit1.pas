unit Unit1;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls,
  Vcl.Menus, Vcl.ComCtrls,Vcl.ExtCtrls,ShellApi;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ClientSocket1: TClientSocket;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    ServerSocket1: TServerSocket;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button6: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button7: TButton;
    Button8: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Help1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Button4Click(Sender: TObject);
    procedure ServerSocket1ClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ServerSocket1Accept(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSocket1Listen(Sender: TObject; Socket: TCustomWinSocket);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Login:string;
  Host:string;
  Port:string;
  ServerLocalAddress:string;
  ServerLocalHost:string;
  hash:integer;
  var Mes:String;
  //StartPanelAdmimMes:string;
implementation
{$R *.dfm}
uses Unit2;
procedure TForm1.Button1Click(Sender: TObject);
begin
  ClientSocket1.Socket.SendText(Login+':'+Edit1.Text);
  Edit1.Clear;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
  Host:=InputBox('Ip','Host:','127.0.0.1');
  Port:=InputBox('Port','Port:','5050');
  ClientSocket1.Port:=StrToint(Port); //Port
  ClientSocket1.Host:=Host;
  ClientSocket1.Active:=True;
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
    ServerSocket1.Active:=False;// ServerSocket1.close;
    Port:=InputBox('Port','Port:','5050');
    ServerSocket1.Port:=StrToInt(Port);
    ServerSocket1.Active:=True;// ServerSocket1.close;
    if ServerSocket1.Active then
     begin
      ListBox1.Items.Add('Server Create!');
      ServerLocalAddress:=ServerSocket1.Socket.LocalAddress;
      ServerLocalHost:=ServerSocket1.Socket.LocalHost;
      ListBox1.Items.Add('Возвращает имя сервера в сети:'+ServerLocalHost);
      ListBox1.Items.Add('Возвращает IP сервера.'+ServerLocalAddress);
      Form1.Clientwidth:=815;
     end
    else ListBox1.Items.Add('Server Failed!');
end;
procedure TForm1.Button4Click(Sender: TObject);
  begin
  ShellExecute(Application.Handle,PChar('open'),PChar('https://cloud.mail.ru/home/'),PChar(0),nil,SW_NORMAL);
  end;
procedure TForm1.Button5Click(Sender: TObject);
begin
 ListBox1.Items.Clear;
 ListBox2.Items.Clear;
end;
procedure TForm1.Button6Click(Sender: TObject);
begin
  ServerSocket1.Active:=True;// ServerSocket1.close;
  ListBox1.Items.Add('Server Open!');
end;

procedure StartPanelAdmim();
begin
if (Mes='StartPanelAdmin1') then begin
hash:=224*221;end;
end;

procedure StartPanelAdmimReturn();
begin

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if Login='Admin' then ClientSocket1.Socket.SendText('StartPanelAdmin1');
  //Edit2.Clear;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
   if Login='Admin' then ClientSocket1.Socket.SendText('ping 127.0.0.1');
end;

procedure TForm1.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);//Ответ от сервера
begin
  Mes:=Socket.ReceiveText;
  if (Mes='StartPanelAdmin1')or(Mes='StartPanelAdmin2') then begin
  //ClientSocket1.Socket.SendText('ping 127.0.0.1');
  //Mes:=Socket.ReceiveText;if (Mes='ping 127.0.0.1') then
  StartPanelAdmim();  if hash<>0 then  ClientSocket1.Socket.SendText('BN'+inttostr(hash));
  end else begin
  ListBox2.Items.Add(Mes);end;  //
end;
//
//   Bot
//
procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;    //Entert=13 delphi
  Shift: TShiftState);
begin
  if Key=13 then
   begin
     Button1.Click;
   end;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  Login:=InputBox('Name','Login:','User1');
  Form1.Clientwidth:=490;
  label1.Caption:=Login;
end;
procedure TForm1.FormDestroy(Sender: TObject);
begin
  ServerSocket1.Close; // CLose сокет
  ClientSocket1.Close; // Закрываем сокет
end;
procedure TForm1.Help1Click(Sender: TObject);
begin
  Form2.Show;
end;
procedure TForm1.ServerSocket1Accept(Sender: TObject; Socket: TCustomWinSocket);
begin //возникает, когда сервер принимает клиента или отказывает ему в соединении;
end;
procedure TForm1.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ListBox1.Items.Add('Connected:UserLogin='+Login+' Ip='+Socket.RemoteAddress+';');
end;
procedure TForm1.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ListBox1.Items.Add('Disconnect:'+Socket.RemoteAddress+';') ;
end;
procedure TForm1.ServerSocket1ClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  {Произошла ошибка - выводим ее код}
  ListBox1.Items.Insert(0, 'Client error.Code = ' + IntToStr(ErrorCode));
end;
procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
I:integer;
Mes:String;
begin
  Mes:=Socket.ReceiveText;
  if (Mes='BN'+inttostr(hash)) then  begin ListBox1.Items.Add('BN:Talk:'+Mes+';'); end
  else begin
  ListBox1.Items.Add('Talk:'+Mes+';');
  for I := 0 to ServerSocket1.Socket.ActiveConnections-1 do
    begin
      ServerSocket1.Socket.Connections[I].SendText(Mes);
    end;
  end;
end;

procedure TForm1.ServerSocket1Listen(Sender: TObject; Socket: TCustomWinSocket);
begin
   ListBox1.Items.Add('Server wait first client!');
end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo: TMemo;
    btn1: TButton;
    Edit1: TEdit;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  t:Integer=0;
  a:array[1..7] of string;
  s:Integer;
  v1,v2,v3,v4,d,n:string;
  today:TDateTime;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var m:Integer;
begin
  Memo.Lines.Add('��: ' + Edit1.text);
  t:=t+1;
  if t=1 then
  begin
  Memo.Lines.Clear;
  v1:='03:00';
  v2:='12:00';
  v3:='18:00';
  v4:='23:00';
    if  (time<=StrToTime(v2)) and (Time>StrToTime(v1)) then Memo.Lines.Add('���: ������ ����! ��� ��� �����?');
    if  (time<=StrToTime(v3)) and (Time>StrToTime(v2)) then Memo.Lines.Add('���: ������ ����! ��� ��� �����?')  ;
    if (time<=StrToTime(v4)) and (Time>StrToTime(v3)) then Memo.Lines.Add('���: ������ �����! ��� ��� �����?')  ;
    if (Time>StrToTime(v4)) or (Time<StrToTime(v1)) then Memo.Lines.Add('���: ������ ����! ��� ��� �����?')  ;
  end
  else if t=2 then
   begin
   n:=Edit1.Text;
  Memo.Lines.Add('���: ����� �������, ' +  n + '! ��� ���� ������?')
  end
  else if(t=3) and (Edit1.text='������ ����� �� ����') then
  begin
    s:=1;
    Memo.Lines.Add('���: �� ����� ����?');
  end

  else if (s=1)and(t=4)and ((Edit1.text='�����������')or (Edit1.text='�������') or (Edit1.text='�����')
   or (Edit1.text='�������') or (Edit1.text='�������') or (Edit1.text='�������') or (Edit1.text='�����������') ) then
   begin
    d:=edit1.text;
    Memo.Lines.Add('���: ���������!');
   end


  else if (s=1) and (t=5) then begin
    if (d='�����������') then m:=1;
    if (d='�������') then m:=2;
    if (d='�����') then  m:=3;
    if (d='�������') then  m:=4;
    if (d='�������') then  m:=5;
    if (d='�������') then  m:=6;
    if (d='�����������') then  m:=7;
    a[m]:=Edit1.text;
    Memo.Lines.Add('���: ��������! ���-������ ���?') ;
    t:=2;
   end
  else if(t=3) and (Edit1.text='������� ��� � ������') then
  begin
   s:=2;
   Memo.Lines.Add('���: � ����� ����?');
  end
  else if (s=2) and (t=4) then
  begin
    if (Edit1.text='�����������') then m:=1;
    if (Edit1.text='�������') then m:=2;
    if (Edit1.text='�����') then m:=3;
    if (Edit1.text='�������') then m:=4;
    if (Edit1.text='�������') then m:=5;
    if (Edit1.text='�������') then m:=6;
    if (Edit1.text='�����������') then m:=7;
    if a[m]='' then Memo.Lines.Add('���:'+n+ ', �� ���� ���� ��� ������!') else Memo.Lines.Add('���:' + n + ', �� ����������� ' + a[m]);
  Memo.Lines.Add('���-������ ���?') ;
  t:=2;
  end
  else if(t=3) and (Edit1.text='����� ���������') then
  begin
    s:=3;
    Memo.Lines.Add('���: ��� � ��� ����, '+n+'?');
  end
  else if (s=3) and (t=4) and (Edit1.text='�����') then
  begin
  Memo.Lines.Add('���: ����� ������ ����������� ��� ���������� ��������, �� ����� ������ ���������� �������.') ;
  Memo.Lines.Add('���������� ��������� �� ������, ������������ ���-������ ��������, ��� ����.') ;
  Memo.Lines.add('��������, ����� �� ���������! ������� - �� �������� ����.');
  Memo.Lines.Add('���-������ ���?') ;
  t:=2;
  end
  else if (s=3) and (t=4) and (Edit1.text='������') then
  begin
    Memo.Lines.Add('���: ��� ���������! �������, ������� ���������� ����� ������� ����� ;)');
  Memo.Lines.Add('���-������ ���?') ;
  t:=2;
  end
  else if (s=3) and (t=4) and (Edit1.text='���������') then
  begin
    Memo.Lines.Add('���: ������������, ����������� � ����������� - ����� �������� �������.') ;
    Memo.Lines.Add('���: ���-������ ���?') ;
    t:=2;
  end
  else if(t=3) and (Edit1.text='������� ������ �������?') then
  begin
    today:=time;
    Memo.Lines.Add('���: ������ '+TimeToStr(today));
    Memo.Lines.Add('���-������ ���?') ;
    t:=2;
  end
  else if(t=3) and (Edit1.text='������ ���������') then
  begin
    Memo.Lines.Clear;
    Memo.Lines.Add('���: ������! ���-������ ���?') ;
    t:=2;
  end
  else if(t=3) and (Edit1.text='�����, ���� ������� � ��������� �����?') then
  begin
    s:=4;
    Memo.Lines.Add('���: '+n+'! �� ������ ������, ��������, �������� � ������ ����� ��� �������� ���-������?');
  end
  else if(t=4) and (s=4) and (Edit1.text= '������') then
  begin
    Memo.Lines.Add('���: ���� ������ ����-���, ��������� ����������, �. ������� ���: https://yandex.ru/maps/-/CCUYy4fp~D');
    Memo.Lines.Add('������� ��������: Il Patio, �.�������: https://yandex.ru/maps/-/CCUYy4rslC');
    Memo.Lines.Add('��������� ����: ���������: https://yandex.ru/maps/-/CCUYy4SBDC');
    Memo.Lines.Add('����� ������ �������� �����! ���-������ ���?') ;
    t:=2;
  end
  else if(t=4) and (s=4) and (Edit1.text= '��������') then
  begin
    Memo.Lines.Add('���: �������� ����� - ���� ��������, �. �����������: https://yandex.ru/maps/-/CCUYy4ToWA');
    Memo.Lines.Add(' �������� ����� - �����: https://yandex.ru/maps/-/CCUYy4di-B');
    Memo.Lines.Add('����� ���������� ����� - ����: https://yandex.ru/maps/-/CCUYy4hkoB');
    Memo.Lines.Add('����� ������ �������� �����! ���-������ ���?') ;
    t:=2;
  end
  else if(t=4) and (s=4) and (Edit1.text= '�������� � ������ �����') then
  begin
    Memo.Lines.Add('���: ��� ������ ��������?');
    Memo.Lines.Add('CheckPoint, �. ���������� �������: https://yandex.ru/maps/-/CCUYyFvIxC');
    Memo.Lines.Add('���, �. ��������������: https://yandex.ru/maps/-/CCUYyFCL~A');
    Memo.Lines.Add('����� ������ �������� �����! ���-������ ���?') ;
    t:=2;
  end
  else if(t=4) and (s=4) and (Edit1.text= '�������� ���-������') then
  begin
    Memo.Lines.Add('���: ����� �������� � �������: https://yandex.ru/maps/-/CCUYBFxBXB ');
    Memo.Lines.Add('��� ������� � ���� � ��������: https://yandex.ru/maps/-/CCUYBJA5XA');
    Memo.Lines.Add('��� ���� ������� ������� ������ - �������� ���������� �����: https://yandex.ru/maps/-/CCUYBJErsD');
    Memo.Lines.Add('����� ������ �������� �����! ���-������ ���?') ;
    t:=2;
  end
  else if (t=3) and (edit1.Text='�� ���� ��') then Memo.Lines.Add('���: ����� �������, '+n+'!')
  else begin
    Memo.Lines.Add('���: � ��� �� ������� :( ���������, ����������');
    t:=t-1;
    end;
  Edit1.Clear;
  end;
end.

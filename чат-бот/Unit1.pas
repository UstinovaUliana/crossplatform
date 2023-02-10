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
  Memo.Lines.Add('Вы: ' + Edit1.text);
  t:=t+1;
  if t=1 then
  begin
  Memo.Lines.Clear;
  v1:='03:00';
  v2:='12:00';
  v3:='18:00';
  v4:='23:00';
    if  (time<=StrToTime(v2)) and (Time>StrToTime(v1)) then Memo.Lines.Add('Бот: Доброе утро! Как вас зовут?');
    if  (time<=StrToTime(v3)) and (Time>StrToTime(v2)) then Memo.Lines.Add('Бот: Добрый день! Как вас зовут?')  ;
    if (time<=StrToTime(v4)) and (Time>StrToTime(v3)) then Memo.Lines.Add('Бот: Добрый вечер! Как вас зовут?')  ;
    if (Time>StrToTime(v4)) or (Time<StrToTime(v1)) then Memo.Lines.Add('Бот: Доброй ночи! Как вас зовут?')  ;
  end
  else if t=2 then
   begin
   n:=Edit1.Text;
  Memo.Lines.Add('Бот: Очень приятно, ' +  n + '! Чем могу помочь?')
  end
  else if(t=3) and (Edit1.text='Запиши планы на день') then
  begin
    s:=1;
    Memo.Lines.Add('Бот: На какой день?');
  end

  else if (s=1)and(t=4)and ((Edit1.text='Понедельник')or (Edit1.text='Вторник') or (Edit1.text='Среда')
   or (Edit1.text='Четверг') or (Edit1.text='Пятница') or (Edit1.text='Суббота') or (Edit1.text='Воскресенье') ) then
   begin
    d:=edit1.text;
    Memo.Lines.Add('Бот: Записываю!');
   end


  else if (s=1) and (t=5) then begin
    if (d='Понедельник') then m:=1;
    if (d='Вторник') then m:=2;
    if (d='Среда') then  m:=3;
    if (d='Четверг') then  m:=4;
    if (d='Пятница') then  m:=5;
    if (d='Суббота') then  m:=6;
    if (d='Воскресенье') then  m:=7;
    a[m]:=Edit1.text;
    Memo.Lines.Add('Бот: Записала! Что-нибудь ещё?') ;
    t:=2;
   end
  else if(t=3) and (Edit1.text='Напомни мне о планах') then
  begin
   s:=2;
   Memo.Lines.Add('Бот: В какой день?');
  end
  else if (s=2) and (t=4) then
  begin
    if (Edit1.text='Понедельник') then m:=1;
    if (Edit1.text='Вторник') then m:=2;
    if (Edit1.text='Среда') then m:=3;
    if (Edit1.text='Четверг') then m:=4;
    if (Edit1.text='Пятница') then m:=5;
    if (Edit1.text='Суббота') then m:=6;
    if (Edit1.text='Воскресенье') then m:=7;
    if a[m]='' then Memo.Lines.Add('Бот:'+n+ ', на этот день нет планов!') else Memo.Lines.Add('Бот:' + n + ', Вы планировали ' + a[m]);
  Memo.Lines.Add('Что-нибудь ещё?') ;
  t:=2;
  end
  else if(t=3) and (Edit1.text='Давай поболтаем') then
  begin
    s:=3;
    Memo.Lines.Add('Бот: Как у вас дела, '+n+'?');
  end
  else if (s=3) and (t=4) and (Edit1.text='Плохо') then
  begin
  Memo.Lines.Add('Бот: Жизнь иногда преподносит нам неприятные сюрпризы, но важно всегда оставаться сильной.') ;
  Memo.Lines.Add('Попробуйте отдохнуть от работы, позаниматься чем-нибудь приятным, для души.') ;
  Memo.Lines.add('Поверьте, скоро всё наладится! Главное - не опускать руки.');
  Memo.Lines.Add('Что-нибудь ещё?') ;
  t:=2;
  end
  else if (s=3) and (t=4) and (Edit1.text='Хорошо') then
  begin
    Memo.Lines.Add('Бот: Это прекрасно! Надеюсь, хорошее настроение будет длиться долго ;)');
  Memo.Lines.Add('Что-нибудь ещё?') ;
  t:=2;
  end
  else if (s=3) and (t=4) and (Edit1.text='Нормально') then
  begin
    Memo.Lines.Add('Бот: Стабильность, спокойствие и уверенность - залог будущего счастья.') ;
    Memo.Lines.Add('Бот: Что-нибудь ещё?') ;
    t:=2;
  end
  else if(t=3) and (Edit1.text='Сколько сейчас времени?') then
  begin
    today:=time;
    Memo.Lines.Add('Бот: Сейчас '+TimeToStr(today));
    Memo.Lines.Add('Что-нибудь ещё?') ;
    t:=2;
  end
  else if(t=3) and (Edit1.text='Очисти переписку') then
  begin
    Memo.Lines.Clear;
    Memo.Lines.Add('Бот: Готово! Что-нибудь ещё?') ;
    t:=2;
  end
  else if(t=3) and (Edit1.text='Скажи, куда сходить в свободное время?') then
  begin
    s:=4;
    Memo.Lines.Add('Бот: '+n+'! Вы хотите поесть, погулять, посидеть в уютном месте или заняться чем-нибудь?');
  end
  else if(t=4) and (s=4) and (Edit1.text= 'Поесть') then
  begin
    Memo.Lines.Add('Бот: Если хотите фаст-фуд, предлагаю Макдоналдс, м. Охотный ряд: https://yandex.ru/maps/-/CCUYy4fp~D');
    Memo.Lines.Add('Нелохой ресторан: Il Patio, м.Курская: https://yandex.ru/maps/-/CCUYy4rslC');
    Memo.Lines.Add('Веганское кафе: Джаганнат: https://yandex.ru/maps/-/CCUYy4SBDC');
    Memo.Lines.Add('Желаю хорошо провести время! Что-нибудь ещё?') ;
    t:=2;
  end
  else if(t=4) and (s=4) and (Edit1.text= 'Погулять') then
  begin
    Memo.Lines.Add('Бот: Отличное место - Парк горького, м. Октябрьская: https://yandex.ru/maps/-/CCUYy4ToWA');
    Memo.Lines.Add(' Красивая улица - Арбат: https://yandex.ru/maps/-/CCUYy4di-B');
    Memo.Lines.Add('Очень интетесное место - ВДНХ: https://yandex.ru/maps/-/CCUYy4hkoB');
    Memo.Lines.Add('Желаю хорошо провести время! Что-нибудь ещё?') ;
    t:=2;
  end
  else if(t=4) and (s=4) and (Edit1.text= 'Посидеть в уютном месте') then
  begin
    Memo.Lines.Add('Бот: Что насчёт антикафе?');
    Memo.Lines.Add('CheckPoint, м. Сретенский бульвар: https://yandex.ru/maps/-/CCUYyFvIxC');
    Memo.Lines.Add('Рос, м. Новослободская: https://yandex.ru/maps/-/CCUYyFCL~A');
    Memo.Lines.Add('Желаю хорошо провести время! Что-нибудь ещё?') ;
    t:=2;
  end
  else if(t=4) and (s=4) and (Edit1.text= 'Заняться чем-нибудь') then
  begin
    Memo.Lines.Add('Бот: Можно поиграть в бильярд: https://yandex.ru/maps/-/CCUYBFxBXB ');
    Memo.Lines.Add('Или сходить в кино с друзьями: https://yandex.ru/maps/-/CCUYBJA5XA');
    Memo.Lines.Add('Ещё один хороший вариант досуга - посетить Пушкинский музей: https://yandex.ru/maps/-/CCUYBJErsD');
    Memo.Lines.Add('Желаю хорошо провести время! Что-нибудь ещё?') ;
    t:=2;
  end
  else if (t=3) and (edit1.Text='На этом всё') then Memo.Lines.Add('Бот: Всего доброго, '+n+'!')
  else begin
    Memo.Lines.Add('Бот: Я вас не понимаю :( Повторите, пожалуйста');
    t:=t-1;
    end;
  Edit1.Clear;
  end;
end.

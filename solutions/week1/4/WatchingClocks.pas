program WatchingClocks;

uses
  SysUtils,
  DateUtils;

const
  BEGINING_OF_TIME = TDateTime(0);

var
  ClockOne, ClockTwo: TDateTime;
  MinutesFastOne, MinutesFastTwo: Integer;

begin
  Read(MinutesFastOne, MinutesFastTwo);

  ClockOne := IncMinute(BEGINING_OF_TIME, 60 + MinutesFastOne);
  ClockTwo := IncMinute(BEGINING_OF_TIME, 60 + MinutesFastTwo);

  while TimeToStr(ClockOne) <> TimeToStr(ClockTwo) do
  begin
    ClockOne := IncMinute(ClockOne, 60 + MinutesFastOne);
    ClockTwo := IncMinute(ClockTwo, 60 + MinutesFastTwo);
  end;

  Writeln(FormatDateTime('hh:mm', ClockOne));

  Readln
end.

program FindAllSolutions;

uses
  SysUtils;

var
  a, b, c, x, y: Integer; // correspond to values in ax + by = c
  Solutions: Boolean = False;

begin

  Writeln('Please enter the values for a, b and c in ax + by = c:');
  Write('a = ');
  Readln(a);
  Write('b = ');
  Readln(b);
  Write('c = ');
  Readln(c);

  Writeln('===========================================================');
  Writeln('Equation: ', a, 'x + ', b, 'y = ', c);
  Writeln('===========================================================');
  Writeln('Solutions: ');

  y := 1;
  // Start at one because solutions must be positive integers.
  while y < c do
  // Because solutions to x and y must be positive
  // neither can be greater than c.
  begin
    x := 1; // same reason as y
    while x < c do // again, same reason as y
    begin
      if ((a * x) + b * y) = c then // ax + by = c ?
      begin
        if not Solutions then
          Solutions := True;
        Writeln('x = ', x,', y = ', y);
      end;
      x := x + 1; 
    end;
    y := y + 1;
  end;

  if not Solutions then
    Writeln('No solutions were found.');

  Readln
end.

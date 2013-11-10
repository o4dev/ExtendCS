program Palindrome;

uses
  SysUtils,
  StrUtils;

var
  InputString: String;

begin

  Write('Enter a string: ');
  Readln(InputString);

  Write('That string is ');
  if InputString <> ReverseString(InputString) then Write('not ');
  Writeln('a palindrome.');
  

  Readln
end.

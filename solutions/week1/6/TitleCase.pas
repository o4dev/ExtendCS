program TitleCase;

uses
  SysUtils;

var
  InputString: String;
  Position: Integer;

begin

  Write('Enter a string: ');
  Readln(InputString);

  InputString[1] := UpperCase(InputString[1])[1];
  
  for Position := 2 to length(InputString) do
    if InputString[Position-1] = ' ' then
      InputString[Position] := UpperCase(InputString[Position])[1];

  Writeln(InputString);

  Readln
end.

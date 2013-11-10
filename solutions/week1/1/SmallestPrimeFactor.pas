program SmallestPrimeFactor;

uses
  SysUtils;

function IsPrime(Prime: Integer): Boolean;
// Determine if a number is prime by brute force.
// Test if any number from 2 up to a half of it is a factor.
// If a factor exists it is prime. 
var
  Factor: Integer;
begin
  IsPrime := True;
  for Factor := 2 to Integer(Prime DIV 2) do
    if (Prime MOD Factor) = 0 then
      IsPrime := False; 
end;

var
  Number: Integer;
  PrimeFactor: Integer = 2; // 2 is smallest prime

begin
  Write('Please enter a positive integer: ');
  Read(Number);

  if (Number = 1) or (Number = -1) then
  begin
    // All prime numbers are, by definition, greater than one.
    // So 1 and -1 do not have any prime factors.
    Writeln('Smallest Prime Factor: N/A');
    // Exit here to not run into factor finding code.
    // As no prime factors of 1 or -1 exist.
    Readln();
    Exit();
  end;

  while (Number MOD PrimeFactor) <> 0 do
  // While prime is not factor of number.
  begin
    // Get next prime.
    PrimeFactor := PrimeFactor + 1;
    while not IsPrime(PrimeFactor) do
      PrimeFactor := PrimeFactor + 1;
  end;
  Writeln('Smallest Prime Factor: ', PrimeFactor);

  Readln
end.

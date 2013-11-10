program LargestPrimeFactor;

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
  Number, Largest: Integer;
  PrimeFactor: Integer = 1; // prime numbers must be greater than 1

begin
  Write('Please enter a positive integer: ');
  Read(Number);

  if (Number = 1) or (Number = -1) then
  begin
    // All prime numbers are, by definition, greater than one.
    // So 1 and -1 do not have any prime factors.
    Writeln('Largest Prime Factor: N/A');
    // Exit here to not run into factor finding code.
    // As no prime factors of 1 or -1 exist.
    Readln();
    Exit();
  end;

  while PrimeFactor < Number do
  begin
    // Get next prime.
    PrimeFactor := PrimeFactor + 1;
    while not IsPrime(PrimeFactor) do
      PrimeFactor := PrimeFactor + 1;

    if (Number MOD PrimeFactor) = 0 then
      Largest := PrimeFactor;
  end;

  Writeln('Largest Prime Factor: ', Largest);

  Readln
end.

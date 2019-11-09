program num2;
uses crt;
var c: array [0..100000] of longint;
n,k: integer;
function fib(n:integer):longint;
 begin
  if n<2 then
    fib := 1
      else fib:=fib(n-1)+fib(n-2);
 end;
begin
  read(n);
  for k:=1 to n do write(fib(k),',');
end.

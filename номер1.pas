program num1;
uses crt;
var
n,t,x,y:longint;
p: array [0..1000000] of longint;
begin
read(n);
for x:=2 to trunc(sqrt(n)) do
  if p[x]=0 then
    begin
     y:=x+x;
     while y<=n do
       begin
        p[y]:=1;
        y:=y+x;
       end;
    end;
t:=0;
for x:=2 to n do
  if p[x]=0 then 
    begin
      write(x,' ');
      t:=t+1;
    end;
if t=0 then write('0');
end.

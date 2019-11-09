  
program num1;
uses crt;
var
n,k,i,j:longint;
p: array [0..1000000] of longint;
begin
read(n);
for i:=2 to trunc(sqrt(n)) do
  if p[i]=0 then
    begin
     j:=i+i;
     while j<=n do
       begin
        p[j]:=1;
        j:=j+i;
       end;
    end;
k:=0;
for i:=2 to n do
  if p[i]=0 then 
    begin
      write(i,' ');
      k:=k+1;
    end;
if k=0 then write('0');
end.

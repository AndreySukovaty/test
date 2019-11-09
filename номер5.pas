program num5;
uses crt;
var x,y,z:integer;
s:string;
begin
read(s);
y:=length(s) div 2;
z:=0;
for x:=1 to y do
  if s[x]=s[length(s)-x+1] then z:=z+1;
if z=y then write('Yes')
  else write('No');
end.

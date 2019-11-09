program num4;
uses crt;
var n,m:integer;
function nod(a,b:integer):integer;
  begin
    if a<>0 then nod:=nod(b mod a,a)
      else nod:=b;
  end;
function nok(a,b:integer):integer;
 begin
      nok:=(a div nod (a,b))*b;
 end;
begin
read(n,m);
writeln('НОД',' ','n',' ','m','=',nod(n,m));
write('НОК',' ','n',' ','m','=',nok(n,m));
end.

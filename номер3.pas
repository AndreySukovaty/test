program zad3;
uses crt;
var x1,x2,x3,x4,y1,y2,y3,y4,L,R,N,W,z1,z2,z3,z4:longint;
begin
  read(x1,y1,x2,y2,x3,y3,x4,y4);
   z3:=(x3-x1)*(y2-y1)-(y3-y1)*(x2-x1);
   z4:=(x4-x1)*(y2-y1)-(y4-y1)*(x2-x1);
   z1:=(x1-x3)*(y4-y3)-(y1-y3)*(x4-x3);
   z2:=(x2-x3)*(y4-y3)-(y2-y3)*(x4-x3);
   L:= max(min(x1,x2), min(x3,x4));
   R:= min(max(x1,x2), max(x3,x4));
   N:= max(min(y1,y2), min(y3,y4));
   W:= min(max(y1,y2), min(y3,y4));
  if ((L<=R) and (W>=N) and (max(z1,z2)=0) and (max(z3,z4)=0)) then
    begin
     write('Yes');
     exit;
    end;
  if ((max(z1,z2)=0) and (max(z3,z4)=0)) then
    begin
     write('No');
     exit;
    end;
  if ((z1*z2 > 0) or (z3*z4>0))then
     write('No')
      else write('Yes');
end.

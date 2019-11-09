program num3;
uses crt;
var x1,x2,x3,x4,y1,y2,y3,y4,Q,M,C,V,k1,k2,k3,k4:longint;
begin
  read(x1,y1,x2,y2,x3,y3,x4,y4);
   k3:=(x3-x1)*(y2-y1)-(y3-y1)*(x2-x1);
   k4:=(x4-x1)*(y2-y1)-(y4-y1)*(x2-x1);
   k1:=(x1-x3)*(y4-y3)-(y1-y3)*(x4-x3);
   k2:=(x2-x3)*(y4-y3)-(y2-y3)*(x4-x3);
   Q:= max(min(x1,x2), min(x3,x4));
   M:= min(max(x1,x2), max(x3,x4));
   C:= max(min(y1,y2), min(y3,y4));
   V:= min(max(y1,y2), min(y3,y4));
  if ((Q<=M) and (V>=C) and (max(k1,k2)=0) and (max(k3,k4)=0)) then
    begin
     write('Yes');
     exit;
    end;
  if ((max(k1,k2)=0) and (max(k3,k4)=0)) then
    begin
     write('No');
     exit;
    end;
  if ((k1*k2 > 0) or (k3*k4>0))then
     write('No')
      else write('Yes');
end.

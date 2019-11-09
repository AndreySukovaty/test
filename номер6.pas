program num6;
uses crt;
var s: string;
k:longint;
begin           
  read(s);
  k:=1;
  while k<=length(s) do
    begin
     case s[k] of '1','2','3','4','5','6','7','8','9','0': Delete(s,k,1)
      else k:=k+1;
     end;
    end;
write(s);
end.

procedure DeletingUnit(var head: Plist);
var 
  current: PList;
  begin
    current := head;
    while current <> nil do
      begin
        if (current^.numbers mod 2 <> 0) then
          current^.numbers := current^.numbers - 1;
        current := current^.next;
      end;
  end;

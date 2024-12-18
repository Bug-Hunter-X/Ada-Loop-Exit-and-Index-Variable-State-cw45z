```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1,2,3,4,5,6,7,8,9,10);
   I : Integer := 0; -- Initialize I to a safe value
begin
   for J in Arr'Range loop
      if Arr(J) = 5 then
         I := J; -- Assign J to I before exiting if condition is met
         exit;
      end if;
   end loop;
   -- Check if the loop exited prematurely before accessing Arr(I)
   if I > 0 then
      Put_Line(Arr(I)'Image);
   else
      Put_Line("Loop exited without finding 5");
   end if;
end Example_Solution;
```
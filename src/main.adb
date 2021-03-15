with Ada.Text_IO;use Ada.Text_IO;
with dpila;
procedure Main is

   package dpilac is new dpila(Character);
   use dpilac;

   p: pila;
   s: String(1..20);
   l:Natural;
begin

   pvacia(p);
   Get_Line(s,l);
   for i in 1..l loop
      empila(p,s(i));
   end loop;

   while not estavacia(p) loop
      Put(cima(p));
      desempila(p);

   end loop;


   null;
end Main;

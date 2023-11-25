unit UMaterias;

interface

type
    TMateria= ^PMateria;
    PMateria= packed record {<< packed record: para poder guardar registros en un archivo}
       nombre: String[20];
       id: integer;
       eliminado: boolean;
    end;

{Crea una nueva materia del tipo TMateria con el id y nombre pasados como argumento}
function crearMateria (id: integer; nombre: string; eliminado: boolean) : TMateria;

{Devuelve el nombre del argumento "m", que no debe ser NIL.}
function getNombreMateria (const m: TMateria) : String;

{Devuelve el id del argumento "m", que no debe ser NIL}
function getIdMateria (const m: TMateria) : integer;

{Establece el id de la materia "m"}
procedure setIdMateria (id: integer; var m: TMateria);

{Establece el nombre de la materia "m"}
procedure setNombreMateria (nombre: string; var m: TMateria);

{Establece la materia como eliminada si se pasa TRUE, como no eliminada si se pasa FALSE}
procedure setMateriaEliminada (e: boolean; var m: TMateria);

{Indica si la materia está marcada como eliminada}
function esMateriaEliminada (const m: TMateria) : boolean;

{Libera la memoria ocupada por "m" y lo deja en NIL}
procedure liberarMateria (var m: TMateria);






implementation

{Pido memoria e inicializo los atributos.
Se puede usar directamente con result en lugar de nombrar una variable auxiliar
que sería de tipo TMateria}
function crearMateria(id: integer; nombre: string; eliminado: boolean): TMateria;
begin
  new(result);
  result^.id:=id;
  result^.nombre:=nombre;
  result^.eliminado:=eliminado;
end;

{Recibimos por referencia constante la materia y retornamos su nombre}
function getNombreMateria(const m: TMateria): String;
begin
  result:= m^.nombre;
end;

{Recibimos por referencia constante la materia y retornamos su id}
function getIdMateria(const m: TMateria): integer;
begin
  result:=m^.id;
end;

procedure setIdMateria(id: integer; var m: TMateria);
begin
  m^.id:=id;
end;

procedure setNombreMateria (nombre: string; var m: TMateria);
begin
  m^.nombre:=nombre;
end;

procedure setMateriaEliminada(e: boolean; var m: TMateria);
begin
  m^.eliminado:=e;
end;

function esMateriaEliminada(const m: TMateria): boolean;
begin
  result:=m^.eliminado;

end;

procedure liberarMateria(var m: TMateria);
begin
  dispose(m);
  m:=NIL;
end;

end.


unit UAsignaturas;

interface

type
    TAsignatura= ^PAsignatura;
    PAsignatura= packed record
       nombre: String[20];
       id: integer;
       idMateria: integer; {<< clave foránea: apunta a la materia a la que hace referencia}
       eliminado: boolean;
    end;


{Crea una nueva asignatura de tipo con los datos pasados como argumentos}
function crearAsignatura (id: integer; nombre: string; idMateria: integer; eliminado: boolean) : TAsignatura;

{Devuelve el nombre del argumento "a", que no debe ser NIL}
function getNombreAsignatura (const a: TAsignatura) : string;

{Devuelve el id del argumento "a" que no debe ser NIL}
function getIdAsignatura (const a: TAsignatura) : integer;

{Devuelve el id de la materia asociada a la asignatura "a"}
function getIdAsignaturaMateria (const a: TAsignatura) : integer;

{Retorna una nueva asignatura que es copia independiente de "a"}
function getCopiaAsignatura (const a: TAsignatura) : TAsignatura;

{Establece el id de la asignatura "a"}
procedure setIdAsignatura (id: integer; var a: Tasignatura);

{Establece el nombre de la asignatura "a"}
procedure setNombreAsignatura (nombre: string; var a: TAsignatura);

{Establece la asignatura como eliminada si se pasa TRUE, como no eliminada si se pasa FALSE}
procedure setAsignaturaEliminada (e: boolean; var a: TAsignatura);

{Establece el id de la materia asociada a la asignatura "a"}
procedure setIdAsignaturaMateria (idM: integer; var a: TAsignatura);

{Indica si la asignatura está marcada como eliminada}
function esAsignaturaEliminada (const a: TAsignatura) : boolean;

{Libera la memoria ocupada por "a" y lo deja en NIL}
procedure liberarAsignatura (var a: TAsignatura);







implementation

function crearAsignatura(id: integer; nombre: string; idMateria: integer;
  eliminado: boolean): TAsignatura;
begin
  new(result);
  result^.id:=id;
  result^.nombre:=nombre;
  result^.idMateria:=idMateria;
  result^.eliminado:=eliminado;
end;

function getNombreAsignatura(const a: TAsignatura): string;
begin
  result:=a^.nombre;
end;

function getIdAsignatura(const a: TAsignatura): integer;
begin
  result:=a^.id;
end;

function getIdAsignaturaMateria(const a: TAsignatura): integer;
begin
  result:=a^.idMateria;
end;

function getCopiaAsignatura(const a: TAsignatura): TAsignatura;
begin
  result:=crearAsignatura (getIdAsignatura(a), getNombreAsignatura(a), getIdAsignaturaMateria(a), esAsignaturaEliminada(a));

end;

procedure setIdAsignatura(id: integer; var a: Tasignatura);
begin

end;

procedure setNombreAsignatura(nombre: string; var a: TAsignatura);
begin

end;

procedure setAsignaturaEliminada(e: boolean; var a: TAsignatura);
begin

end;

procedure setIdAsignaturaMateria(idM: integer; var a: TAsignatura);
begin

end;

function esAsignaturaEliminada(const a: TAsignatura): boolean;
begin

end;

procedure liberarAsignatura(var a: TAsignatura);
begin

end;

end.


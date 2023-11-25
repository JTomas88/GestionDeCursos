unit UCursos;

interface

type
    TEstadoCurso= (PENDIENTE,INICIADO,FINALIZADO);

    TCurso= ^PCurso;
    PCurso= packed record
	    id, idDocente, idAsignatura, edicion, anno: integer;
	    nombre: string[15];
	    puntaje: byte;
	    estado: TEstadoCurso;
	    eliminado: boolean;
    end;

{Crea un nuevo curso con los datos pasados como argumento}
function crearCurso (id: integer; nombre: string; idDocente: integer; puntaje: byte;
         idAsignatura, edicion, anno: integer; estado: TEstadoCurso; eliminado: boolean):
         TCurso;

{Retorna una copia independiente de "c"}
function getCopiaCurso (const c: TCurso) : TCurso;

{Retorna el Id del curso}
function getIdCurso (const c: TCurso) : integer;

{Retorna el nombre del curso}
function getNombreCurso (const c: TCurso) : string;

{Retorna el id del docente encargado del curso}
function getIdDocenteCurso (const c: Tcurso) : integer;

{Retorna el puntaje del curso}
function getPuntajeCurso (const c: Tcurso) : integer;

{Retorna el id de la asignatura del curso}
function getIdAsignaturaCurso (const c: Tcurso) : integer;

{Retorna la edición del curso}
function getEdicionCurso (const c: TCurso) : integer;

{Retorna el año del curso}
function getAnnoCurso (const c: TCurso) : integer;

{Retorna el estado del curso}
function getEstadoCurso (const c: TCurso) : TEstadoCurso;

{Indica si el curso está marcado como eliminado o no}
function EsCursoEliminado (const c: TCurso) : boolean;

{Asigna el id al curso}
procedure setIdCurso (id: integer; var c: TCurso);

{Asigna el nombre al curso}
procedure setNombreCurso (nombre: string; var c: TCurso);

{Asigna el id del docente encargado del curso}
procedure setIdDocenteCurso (idDocente: integer; var c: Tcurso);

{Asigna el puntaje al curso}
procedure setPuntajeCurso (puntaje: byte; var c: TCurso);

{Asigna el id de la asignatura a la que pertenece el curso}
procedure setIdAsignaturaCurso (idAsignatura: integer; var c: TCurso);

{Asigna la edición al curso}
procedure setEdicionCurso (edicion: integer; var c: TCurso);

{Asigna el año del curso}
procedure setAnnoCurso (anno: integer; var c: TCurso);

{Asigna el estado del curso}
procedure setEstadoCurso (estado: TEstadoCurso; var c: TCurso);

{Establece el curso como eliminado o no, según se pase TRUE o FALSE respectivamente}
procedure setCursoEliminado (eliminado: boolean; var c: Tcurso);

{Lbera la memoria ocupada por "c" y lo deja en NIL}
procedure liberarCurso (var c: TCurso);






implementation

function crearCurso(id: integer; nombre: string; idDocente: integer;
  puntaje: byte; idAsignatura, edicion, anno: integer; estado: TEstadoCurso;
  eliminado: boolean): TCurso;
begin
  new(result);
  result^.id:=id;
  result^.nombre:=nombre;
  result^.idDocente:=idDocente;
  result^.puntaje:=puntaje;
  result^.idAsignatura:=idAsignatura;
  result^.edicion:=edicion;
  result^.anno:=anno;
  result^.estado:=estado;
  result^.eliminado:=eliminado;
end;

function getCopiaCurso(const c: TCurso): TCurso;
begin
  result:=crearCurso (getIdCurso(c), getNombreCurso(c), getIdDocenteCurso(c), getPuntajeCurso(c),
          getIdAsignaturaCurso(c), getEdicionCurso(c), getAnnoCurso(c), getEstadoCurso(c), EsCursoEliminado(c));
end;

function getIdCurso(const c: TCurso): integer;
begin
  result:=c^.id;
end;

function getNombreCurso(const c: TCurso): string;
begin
  result:=c^.nombre;
end;

function getIdDocenteCurso(const c: Tcurso): integer;
begin
  result:=c^.idDocente;
end;

function getPuntajeCurso(const c: Tcurso): integer;
begin
  result:=c^.puntaje;
end;

function getIdAsignaturaCurso(const c: Tcurso): integer;
begin
  result:=c^.idAsignatura;
end;

function getEdicionCurso(const c: TCurso): integer;
begin
  result:=c^.edicion;
end;

function getAnnoCurso(const c: TCurso): integer;
begin
  result:=c^.anno;
end;

function getEstadoCurso(const c: TCurso): TEstadoCurso;
begin
  result:=c^.estado;
end;

function EsCursoEliminado(const c: TCurso): boolean;
begin
  result:=c^.eliminado;
end;

procedure setIdCurso(id: integer; var c: TCurso);
begin
  c^.id:=id;
end;

procedure setNombreCurso(nombre: string; var c: TCurso);
begin
  c^.nombre:=nombre;
end;

procedure setIdDocenteCurso(idDocente: integer; var c: Tcurso);
begin
  c^.idDocente:=idDocente;
end;

procedure setPuntajeCurso(puntaje: byte; var c: TCurso);
begin
  c^.puntaje:=puntaje;
end;

procedure setIdAsignaturaCurso(idAsignatura: integer; var c: TCurso);
begin
  c^.idAsignatura:=idAsignatura;
end;

procedure setEdicionCurso(edicion: integer; var c: TCurso);
begin
  c^.edicion:=edicion;
end;

procedure setAnnoCurso(anno: integer; var c: TCurso);
begin
  c^.anno:=anno;
end;

procedure setEstadoCurso(estado: TEstadoCurso; var c: TCurso);
begin
  c^.estado:=estado;
end;

procedure setCursoEliminado(eliminado: boolean; var c: Tcurso);
begin
  c^.eliminado:=eliminado;
end;

procedure liberarCurso(var c: TCurso);
begin
  dispose(c);
  c:=NIL;
end;

end.


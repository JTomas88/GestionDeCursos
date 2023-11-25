unit UDocentes;

interface

type
    TDocente= ^PDocente;
    PDocente= packed record
	    id: integer;
	    nombre, apellido: string[15];
	    documento: string[10];
	    fechaN, fechaI: string[10];
	    grado: byte;
	    eliminado: boolean;
    end;


{Crea un nuevo docente con los datos pasados como argumento}
function crearDocente (id: integer; nombre, apellido, documento, fNac: string;
         grado: byte; fIng: string; eliminado: boolean) : TDocente;

{Retorna el ID del docente}
function getIdDocente (const d: TDocente): integer;

{Retorna el nombre del docente}
function getNombreDocente (const d: TDocente) : string;

{Retorna el apellido del docente}
function getApellidoDocente (const d: TDocente) : string;

{Retorna el documento del docente}
function getDocumentDocente (const d: TDocente) : string;

{Retorna la fecha de nacimiento del docente}
function getFechaNacimientoDocente (const d: TDocente) : string;

{Retorna el grado del docente}
function getGradoDocente (const d: TDocente): byte;

{Retorna la fecha de ingreso del docente}
function getFechaIngresoDocente (const d: TDocente) : string;

{Indica si el docente ha sido eliminado o no}
function esDocenteEliminado (const d: TDocente) : boolean;

{Asigna el id al docente}
procedure setIdDocente (id: integer; var d: TDocente);

{Asigna el nombre al docente}
procedure setNombreDocente (nombre: string; var d: TDocente);

{Asigna el apellido al docente}
procedure setApellidoDocente (apellido: string; var d: TDocente);

{Asigna el documento al docente}
procedure setDocumentoDocente (documento: string; var d: TDocente);

{Asigna la fecha de nacimiento al docente}
procedure setFechaNacimientoDocente (fecha: string; var d: TDocente);

{Asigna el grado al docente}
procedure setGradoDocente (grado: byte; var d: TDocente);

{Asigna la fecha de ingreso al docente}
procedure setFechaIngresoDocente (fecha: string; var d: TDocente);

{Establece al docente como eliminado o no, según se pase TRUE o FALSE respectivamente}
procedure setDocenteEliminado(eliminado: boolean; var d: TDocente);

{Libera la memoria ocupada por "d" y lo deja en NIL}
procedure liberarDocente (var d: TDocente);





implementation

function crearDocente(id: integer; nombre, apellido, documento, fNac: string;
  grado: byte; fIng: string; eliminado: boolean): TDocente;
begin

end;

function getIdDocente(const d: TDocente): integer;
begin

end;

function getNombreDocente(const d: TDocente): string;
begin

end;

function getApellidoDocente(const d: TDocente): string;
begin

end;

function getDocumentDocente(const d: TDocente): string;
begin

end;

function getFechaNacimientoDocente(const d: TDocente): string;
begin

end;

function getGradoDocente(const d: TDocente): byte;
begin

end;

function getFechaIngresoDocente(const d: TDocente): string;
begin

end;

function esDocenteEliminado(const d: TDocente): boolean;
begin

end;

procedure setIdDocente(id: integer; var d: TDocente);
begin

end;

procedure setNombreDocente(nombre: string; var d: TDocente);
begin

end;

procedure setApellidoDocente(apellido: string; var d: TDocente);
begin

end;

procedure setDocumentoDocente(documento: string; var d: TDocente);
begin

end;

procedure setFechaNacimientoDocente(fecha: string; var d: TDocente);
begin

end;

procedure setGradoDocente(grado: byte; var d: TDocente);
begin

end;

procedure setFechaIngresoDocente(fecha: string; var d: TDocente);
begin

end;

procedure setDocenteEliminado(eliminado: boolean; var d: TDocente);
begin

end;

procedure liberarDocente(var d: TDocente);
begin

end;

end.


//SIMPLEMENTE COPIA Y PEGA ESTOS CÓDIGOS EN SUS
//RESPECTIVAS UNIDADES, LAS CUALES TU IRÁS
//CREANDO PASO A PASO.
{****************** TIPO TMateria ******************}
unit PlantillaDeTipos;
interface

TMateria= ^PMateria;
PMateria= packed record
   nombre: String[20];
   id: integer;
   eliminado: boolean;
end;
{--------------------------------------------------}
{****************** TIPO TAsignatura **************}
TAsignatura= ^PAsignatura;
PAsignatura= packed record
   nombre: String[20];
   id: integer;
   idMateria: integer;
   eliminado: boolean;
end;
{--------------------------------------------------}
{****************** TIPO TCurso *******************}
TEstadoCurso= (PENDIENTE,INICIADO,FINALIZADO);
TCurso= ^PCurso;

PCurso= packed record
	id, idDocente, idAsignatura, edicion, anno: integer;
	nombre: string[15];
	puntaje: byte;
	estado: TEstadoCurso;
	eliminado: boolean;
end;
{--------------------------------------------------}
{****************** TIPO TDocente *****************}
TDocente= ^PDocente;

PDocente= packed record
	id: integer;
	nombre, apellido: string[15];
	documento: string[10];
	fechaN, fechaI: string[10];
	grado: byte;
	eliminado: boolean;
end;
{--------------------------------------------------}
{****************** TIPO TEstudiante **************}
TEstudiante= ^PEstudiante;

PEstudiante= packed record
	id: integer;
	nombre, apellido: string[15];
	documento: string[10];
	fechaN, fechaI: string[10];
	eliminado: boolean;
end;
{--------------------------------------------------}
{****************** TIPO TInscripcion *************}
TEstadoInscripcion= (CURSANDO,APROBADO,REPROBADO,EXAMEN);

TInscripcion= ^PInscripcion ;
PInscripcion= record
	id: integer;
	estudiante: TEstudiante;
	curso: TCurso;
	estado: TEstadoInscripcion;
	nota: integer;
	eliminado: boolean;
end;

PInscripcionPacked= packed record
	id, idEstudiante, idCurso, nota: integer;
	estado: TEstadoInscripcion;
	eliminado: boolean;
end;
{--------------------------------------------------}
{****************** TIPO TRendicion ***************}
TEstadoRendicion= (EXAMEN_PENDIENTE, EXAMEN_REPROBADO, EXAMEN_APROBADO);

TRendicion= ^PRendicionExamen;
PRendicionExamen= packed record
	id, idExamen, idInscripcion: integer;
	nota: byte;
	estado: TEstadoRendicion;
	eliminado: boolean;
end;
{--------------------------------------------------}
{****************** TIPO TExamen ******************}
TExamen= ^PExamen;
PExamen= packed record
	idExamen, idCurso: integer;
	fecha: string[10];
	eliminado: boolean;
end;

implementation

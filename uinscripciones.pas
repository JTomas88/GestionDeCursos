unit UInscripciones;

interface

uses UEstudiantes, UCursos;

type
    TEstadoInscripcion= (CURSANDO,APROBADO,REPROBADO,EXAMEN);

    TInscripcion= ^PInscripcion ;
    PInscripcion= record
	    id: integer;
	    estudiante: TEstudiante;  {en este caso no apunta al id del estudiante, sino al tipo en si, por eso es necesario haberlo creado previamente}
	    curso: TCurso;            {en este caso no apunta al id del curso, sino al tipo en si, por eso es necesario haberlo creado previamente}
	    estado: TEstadoInscripcion;
	    nota: integer;
	    eliminado: boolean;
    end;

    PInscripcionPacked= packed record
	id, idEstudiante, idCurso, nota: integer;
	estado: TEstadoInscripcion;
	eliminado: boolean;
     end;

implementation

end.


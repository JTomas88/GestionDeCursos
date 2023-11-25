unit URendiciones;

interface

type
    TEstadoRendicion= (EXAMEN_PENDIENTE, EXAMEN_REPROBADO, EXAMEN_APROBADO);

    TRendicion= ^PRendicionExamen;
    PRendicionExamen= packed record
	    id, idExamen, idInscripcion: integer;
	    nota: byte;
	    estado: TEstadoRendicion;
	    eliminado: boolean;
    end;


implementation

end.


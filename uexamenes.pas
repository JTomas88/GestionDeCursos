unit UExamenes;

interface

type
    TExamen= ^PExamen;
    PExamen= packed record
  	  idExamen, idCurso: integer;
  	  fecha: string[10];
  	  eliminado: boolean;
    end;

implementation

end.


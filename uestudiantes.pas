unit UEstudiantes;

interface

type
    TEstudiante= ^PEstudiante;
    PEstudiante= packed record
	    id: integer;
	    nombre, apellido: string[15];
	    documento: string[10];
	    fechaN, fechaI: string[10];
	    eliminado: boolean;
    end;


implementation

end.


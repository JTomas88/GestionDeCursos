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


implementation

end.


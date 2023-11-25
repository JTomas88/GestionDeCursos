unit UGeneralConst;

interface
const
    (******************* Constantes de valores máximos ************************)
    MAX_MATERIAS= 1000;
    MAX_ASIGNATURAS= 5000;

    (*********************** Caracter de salto de línea ***********************)
    CHAR_NEW_LINE= #13#10;

    (************************* Prompt para el usuario *************************)
    PROMPT= '>> ';

    (******************** Nombres de los comandos del sistema *****************)
    N_COMANDO_AYUDA= 'AYUDA';
    N_COMANDO_AGREGAR= 'AGREGAR';
    N_COMANDO_MODIFICAR= 'MODIFICAR';
    N_COMANDO_ELIMINAR= 'ELIMINAR';
    N_COMANDO_INSCRIBIR= 'INSCRIBIR';
    N_COMANDO_EVALUAR= 'EVALUAR';
    N_COMANDO_MOSTRAR= 'MOSTRAR';
    N_COMANDO_EXPORTAR= 'EXPORTAR';
    N_COMANDO_SALIR= 'SALIR';

    (********** Nombres de los parámetros para comandos del sistema  **********)
    N_PARAM_MATERIA= '-M';
    N_PARAM_ASIGNATURA= '-A';
    N_PARAM_DOCENTE= '-D';
    N_PARAM_CURSO= '-C';
    N_PARAM_ESTUDIANTE= '-E';
    N_PARAM_INSCRIPCION= '-I';
    N_PARAM_EXAMEN= '-Ex';
    N_PARAM_FECHA_ACTUAL= '-H';
    N_PARAM_CURSANDO= '-Cu';
    N_PARAM_APROBADO= '-Ap';
    N_PARAM_REPROBADO= '-Re';
    N_PARAM_SHARP= '#';

    (***************************** Expresiones regulares  *********************)
    EXP_NOMBRE_APELLIDO= '[A-Z]{1}[a-zA-Z\s]+[a-z]+';
    EXP_IDENTIFICADOR= '[a-zA-Z]+[a-zA-Z0-9\s]*[a-zA-Z0-9]+';
    EXP_DOCUMENTO= '[a-zA-Z0-9]+';
    EXP_FECHA= '[0-9]{2}/[0-9]{2}/[0-9]{4}';
    EXP_PUNTAJE= '[0-9]{1,2}';
    EXP_GRADO= '[1-5]{1}';
    EXP_ANNO= '[0-9]{4}';
    EXP_EDICION= '[0-9]+';

    (************************ Datos DOCENTE DEFAULT  **************************)
     DOCENTE_DEFAULT_NOMBRE_APELLIDO= 'NULL';
     DOCENTE_DEFAULT_DOCUMENTO= 'NULLDOC';
     DOCENTE_DEFAULT_FECHAN= '01/01/2000';
     DOCENTE_DEFAULT_GRADO= 1;
     DOCENTE_DEFAULT_ID= 0;

implementation

end.


   count = cur.fetchone()[0]
        assert count == 10

def test_inscripciones_insertados(db_connection):
def test_materias_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM materias;")
        count = cur.fetchone()[0]
        assert count == 10

def test_inscripciones_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripciones;")
        count = cur.fetchone()[0]
        assert count == 10  

def test_asistencia_insertados(db_connection):
def test_asistencias_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asistencia;")
        cur.execute("SELECT COUNT(*) FROM asistencias;")
        count = cur.fetchone()[0]
        assert count == 10  

def test_structure(db_connection):
    sql = ''' 
            SELECT tablename FROM pg_tables 
            WHERE tablename 
            IN ('alumnos', 'maestros', 'grupos',
            'inscripciones', 'asistencia');
          '''
    expected_tables = {'alumnos', 'maestros',
                       'grupos', 'inscripciones',
                       'asistencia'}
        SELECT tablename FROM pg_tables 
        WHERE tablename IN (
            'alumnos', 'maestros', 'grupos', 'materias',
            'inscripciones', 'asistencias'
        );
    '''
    expected_tables = {'alumnos', 'maestros', 'grupos', 'materias', 'inscripciones', 'asistencias'}
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f'''Expected tables {expected_tables},
              but found {result_tables}'''
        msg = f"Expected tables {expected_tables}, but found {result_tables}"
        assert result_tables == expected_tables, msg

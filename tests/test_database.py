def test_alumnos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM alumnos;")
        cur.execute("SELECT COUNT(*) FROM Alumnos;")
        count = cur.fetchone()[0]
        assert count == 10

def test_maestros_insertados(db_connection):
def test_profesores_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM maestros;")
        cur.execute("SELECT COUNT(*) FROM Profesores;")
        count = cur.fetchone()[0]
        assert count == 10

def test_materias_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM Materias;")
        count = cur.fetchone()[0]
        assert count == 5

def test_periodos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM Periodos;")
        count = cur.fetchone()[0]
        assert count == 1

def test_grupos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM grupos;")
        cur.execute("SELECT COUNT(*) FROM Grupos;")
        count = cur.fetchone()[0]
        assert count == 10
        assert count == 5

def test_inscripciones_insertados(db_connection):
def test_inscripciones_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripciones;")
        cur.execute("SELECT COUNT(*) FROM Inscripciones;")
        count = cur.fetchone()[0]
        assert count == 10  
        assert count == 10

def test_asistencia_insertados(db_connection):
def test_asistencias_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asistencia;")
        cur.execute("SELECT COUNT(*) FROM Asistencias;")
        count = cur.fetchone()[0]
        assert count == 10  
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
    sql = '''
        SELECT tablename FROM pg_tables
        WHERE tablename
        IN ('alumnos', 'profesores', 'materias',
        'periodos', 'grupos', 'inscripciones', 'asistencias');
    '''
    expected_tables = {'alumnos', 'profesores', 'materias',
                       'periodos', 'grupos', 'inscripciones',
                       'asistencias'}
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f'''Expected tables {expected_tables},
              but found {result_tables}'''
                 but found {result_tables}'''
        assert result_tables == expected_tables, msg

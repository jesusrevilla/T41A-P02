def test_alumnos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM Alumnos;")
        count = cur.fetchone()[0]
        assert count == 10

def test_profesores_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM Profesores;")
        count = cur.fetchone()[0]
        assert count == 10

def test_materias_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM Materias;")
        count = cur.fetchone()[0]
        assert count == 10

def test_grupos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM Grupos;")
        count = cur.fetchone()[0]
        assert count == 10

def test_inscripciones_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM Inscripciones;")
        count = cur.fetchone()[0]
        assert count == 10


def test_structure(db_connection):
    sql = ''' 
            SELECT tablename FROM pg_tables 
            WHERE tablename IN (
                'estudiante', 'alumnos', 'libro', 'profesores',
                'prestamo', 'materias', 'periodos', 'grupos',
                'inscripciones', 'asistencias'
            );
          '''
    expected_tables = {
        'estudiante', 'alumnos', 'libro', 'profesores',
        'prestamo', 'materias', 'periodos', 'grupos',
        'inscripciones', 'asistencias'
    }
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f'''Expected tables {expected_tables}, but found {result_tables}'''
        # con igualdad estricta:
        # assert result_tables == expected_tables, msg
        # o si quieres que sea flexible:
        assert expected_tables.issubset(result_tables), msg

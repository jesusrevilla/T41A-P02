import psycopg2
import pytest

@pytest.fixture(scope="module")
def db_connection():
    conn = psycopg2.connect(
        dbname="test_db",
        user="postgres",
        password="postgres",
        host="localhost",
        port="5432"
    )
    yield conn
    conn.close()

def test_alumnos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM alumno;")
        count = cur.fetchone()[0]
        assert count == 10

def test_maestros_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM maestro;")
        count = cur.fetchone()[0]
        assert count == 10

def test_grupos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM grupo;")
        count = cur.fetchone()[0]
        assert count == 10

def test_inscripciones_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripcion;")
        count = cur.fetchone()[0]
        assert count == 10

def test_asistencias_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asistencia;")
        count = cur.fetchone()[0]
        assert count == 10

def test_materias_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM materia;")
        count = cur.fetchone()[0]
        assert count == 10

def test_materia_grupo_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM materia_grupo;")
        count = cur.fetchone()[0]
        assert count == 10

def test_maestro_materia_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM maestro_materia;")
        count = cur.fetchone()[0]
        assert count == 10

def test_alumno_materia_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM alumno_materia;")
        count = cur.fetchone()[0]
        assert count == 10

def test_structure(db_connection):
    sql = ''' 
        SELECT tablename FROM pg_tables 
        WHERE tablename IN (
            'alumno', 'maestro', 'grupo',
            'inscripcion', 'asistencia',
            'materia', 'materia_grupo',
            'maestro_materia', 'alumno_materia'
        );
    '''
    expected_tables = {
        'alumno', 'maestro', 'grupo',
        'inscripcion', 'asistencia',
        'materia', 'materia_grupo',
        'maestro_materia', 'alumno_materia'
    }
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f'''Expected tables {expected_tables}, but found {result_tables}'''
        assert result_tables == expected_tables, msg

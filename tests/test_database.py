import psycopg2
import pytest

@pytest.fixture(scope="module")
def db_connection():
    """
    Establece una conexión con la base de datos de prueba.
    """
    conn = psycopg2.connect(
        dbname="test_db",
        user="postgres",
        password="postgres",
        host="localhost",
        port="5432"
    )
    yield conn
    conn.close()

def test_carreras_insertadas(db_connection):
    """
    Verifica que se haya insertado una carrera.
    """
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM carrera;")
        count = cur.fetchone()[0]
        assert count == 1, "Se esperaba 1 carrera insertada"

def test_alumnos_insertados(db_connection):
    """
    Verifica que se hayan insertado 10 alumnos.
    """
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM alumno;")
        count = cur.fetchone()[0]
        assert count == 10, "Se esperaban 10 alumnos insertados"

def test_maestros_insertados(db_connection):
    """
    Verifica que se hayan insertado 10 maestros.
    """
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM maestro;")
        count = cur.fetchone()[0]
        assert count == 10, "Se esperaban 10 maestros insertados"

def test_grupos_insertados(db_connection):
    """
    Verifica que se hayan insertado 10 grupos.
    """
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM grupo;")
        count = cur.fetchone()[0]
        assert count == 10, "Se esperaban 10 grupos insertados"

def test_inscripciones_insertadas(db_connection):
    """
    Verifica que se hayan insertado 10 inscripciones.
    """
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripcion;")
        count = cur.fetchone()[0]
        assert count == 10, "Se esperaban 10 inscripciones insertadas"

def test_asistencia_insertada(db_connection):
    """
    Verifica que se haya insertado 10 registros de asistencia.
    """
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asistencia;")
        count = cur.fetchone()[0]
        assert count == 10, "Se esperaban 10 registros de asistencia insertados"

def test_estructura(db_connection):
    """
    Verifica que todas las tablas esperadas existan.
    """
    sql = '''
        SELECT tablename FROM pg_tables
        WHERE tablename
        IN ('alumno', 'maestro', 'grupo', 'inscripcion', 'asistencia', 'carrera');
    '''
    expected_tables = {'alumno', 'maestro', 'grupo', 'inscripcion', 'asistencia', 'carrera'}
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f"Tablas esperadas {expected_tables}, pero se encontraron {result_tables}"
        assert result_tables == expected_tables, msg

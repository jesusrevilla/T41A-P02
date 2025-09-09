
import psycopg2
import pytest

# Conexión a la base de datos
@pytest.fixture(scope="module")
def db_connection():
    conn = psycopg2.connect(
        dbname="test_db",  # Cambia si tu base no se llama así
        user="postgres",
        password="postgres",
        host="localhost",
        port="5432"
    )
    yield conn
    conn.close()

# Test: alumnos insertados
def test_alumnos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM alumno;")
        count = cur.fetchone()[0]
        assert count == 10

# Test: maestros insertados
def test_maestros_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM maestro;")
        count = cur.fetchone()[0]
        assert count == 10

# Test: grupos insertados
def test_grupos_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM grupo;")
        count = cur.fetchone()[0]
        assert count == 10

# Test: inscripciones insertadas
def test_inscripciones_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripcion;")
        count = cur.fetchone()[0]
        assert count == 10  

# Test: asistencia insertada
def test_asistencia_insertada(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asistencia;")
        count = cur.fetchone()[0]
        assert count == 10  

# Test: estructura de las tablas
def test_structure(db_connection):
    sql = ''' 
        SELECT tablename FROM pg_tables 
        WHERE tablename IN (
            'alumno', 'maestro', 'grupo',
            'inscripcion', 'asistencia'
        );
    '''
    expected_tables = {'alumno', 'maestro', 'grupo', 'inscripcion', 'asistencia'}
    with db_connection.cursor() as cur:
        cur.execute(sql)
        result_tables = {row[0] for row in cur.fetchall()}
        msg = f'Expected tables {expected_tables}, but found {result_tables}'
        assert result_tables == expected_tables, msg


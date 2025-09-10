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

def test_carrera_insertada(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM carrera;")
        count = cur.fetchone()[0]
        assert count == 6  # Ajusta según 02_insert_data.sql

def test_estudiante_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM estudiante;")
        count = cur.fetchone()[0]
        assert count == 10

def test_profesor_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM profesor;")
        count = cur.fetchone()[0]
        assert count == 10

def test_materia_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM materia;")
        count = cur.fetchone()[0]
        assert count == 10

def test_grupo_insertados(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM grupo;")
        count = cur.fetchone()[0]
        assert count == 10

def test_inscripcion_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM inscripcion;")
        count = cur.fetchone()[0]
        assert count == 10

def test_asistencia_insertadas(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM asistencia;")
        count = cur.fetchone()[0]
        assert count == 10

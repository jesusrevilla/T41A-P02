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

# Tests de conteo de registros
def test_carrera_insertada(db_connection):
    with db_connection.cursor() as cur:
        cur.execute("SELECT COUNT(*) FROM carrera;")
        count = cur.fetchone()[0]
        assert count == 6

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

# Test adicional para verificar que el query de faltas funciona
def test_query_faltas_funciona(db_connection):
    """Test que verifica que la consulta de faltas funciona"""
    with db_connection.cursor() as cur:
        # Ejecuta el query del archivo 03_query_faltas.sql
        cur.execute("""
            SELECT 
                a.id_estudiante,
                e.nombre,
                a.id_grupo,
                a.periodo,
                m.descripcion,
                COUNT(*) FILTER (WHERE a.presente = false) AS total_faltas
            FROM asistencia a
            JOIN estudiante e ON a.id_estudiante = e.matricula
            JOIN grupo g ON a.id_grupo = g.id AND a.periodo = g.periodo
            JOIN materia m ON g.id_materia = m.id
            GROUP BY a.id_estudiante, e.nombre, a.id_grupo, a.periodo, m.descripcion
            ORDER BY a.id_estudiante;
        """)
        resultados = cur.fetchall()
        # Verifica que el query devuelve resultados
        assert len(resultados) > 0
        # Verifica que cada resultado tiene 6 columnas
        for resultado in resultados:
            assert len(resultado) == 6

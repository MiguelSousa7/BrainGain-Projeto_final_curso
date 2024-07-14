import sqlite3

connector = sqlite3.connect('BrainGain.db')
cursor = connector.cursor()

# Definir o script SQL
sql_commands = [
    """
    CREATE TABLE Paciente (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        Nome TEXT,
        Idade INTEGER,
        Genero TEXT ,
        Historico_Medico TEXT,
        PacienteNivelConscienciaId INTEGER,
        FOREIGN KEY (PacienteNivelConscienciaId) REFERENCES PacienteNivelConsciencia(Id)
    );
    """,
    "INSERT INTO Paciente (Genero) VALUES ('Masculino'), ('Feminino');",
    """
    CREATE TABLE PacienteCuidador (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        PacienteId INTEGER,
        CuidadorId INTEGER,
        FOREIGN KEY (PacienteId) REFERENCES Paciente(Id),
        FOREIGN KEY (CuidadorId) REFERENCES Cuidador(Id)
    );
    """,
    """
    CREATE TABLE Cuidador (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        Nome TEXT,
        Morada TEXT,
        Email TEXT,
        Telemovel INTEGER,
        Palavrapass TEXT,
        TipoId INTEGER,
        FOREIGN KEY (TipoId) REFERENCES Tipo(Id)
    );
    """,
    """
    CREATE TABLE Tipo (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        Parentesco TEXT,
        Especializacao TEXT 
    );
    """,
    "INSERT INTO Tipo (Parentesco) VALUES ('Pai'), ('Mãe'), ('Filho/a'), ('Tio/a'), ('Primo/a'), ('Avo/a');",
    "INSERT INTO Tipo (Especializacao) VALUES ('Medico/a'), ('Enfermeiro/a');",
    """
    CREATE TABLE AplicacaoEstimulosPaciente (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        PacienteId INTEGER,
        EstimuloId INTEGER,
        Duracao INTEGER,
        FOREIGN KEY (PacienteId) REFERENCES Paciente(Id),
        FOREIGN KEY (EstimuloId) REFERENCES Estimulos(Id)
    );
    """,
    """
    CREATE TABLE Estimulos (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        Tipo Text,
        Descricao TEXT,
        Intensidade INTEGER,
        Frequencia INTEGER
    );
    """,
    """
    CREATE TABLE Personalizacao (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        PacienteId INTEGER,
        EstimuloId INTEGER,
        Preferencias TEXT,
        FOREIGN KEY (PacienteId) REFERENCES Paciente(Id),
        FOREIGN KEY (EstimuloId) REFERENCES Estimulos(Id)
    );
    """,
    """
    CREATE TABLE Relatorio (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        PacienteId INTEGER,
        Titulo TEXT, 
        Data_relatorio DATE,
        Detalhes TEXT,
        FOREIGN KEY (PacienteId) REFERENCES Paciente(Id)
    );
    """,
    """
    CREATE TABLE PacienteNivelConsciencia (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        PacienteId INTEGER,
        Descricao TEXT,
        Data_Registo DATE,
        Escala INTEGER,
        FOREIGN KEY (PacienteId) REFERENCES Paciente(Id)
    );
    """,
    "INSERT INTO PacienteNivelConsciencia (Escala) VALUES (1), (2), (3), (4), (5);",
    """
    CREATE TABLE NivelConsciencia (
        Id INTEGER PRIMARY KEY AUTOINCREMENT,
        Descricao TEXT,
        Escala INTEGER
    );
    """
]

#juntar os comandos que estão em lista, numa string
sql_script = ";".join(sql_commands)

# Executar o script SQL
cursor.executescript(sql_script)

#fazer alterações
connector.commit()

# Fechar a conexão
connector.close()


############################################################################################
############################################################################################
# import sqlite3

# connector = sqlite3.connect('BrainGain.db')
# cursor = connector.cursor()

# # Definir o script SQL
# sql_commands = [
#     """
#     CREATE TABLE Paciente (
#         Id INTEGER PRIMARY KEY,
#         Nome TEXT NOT NULL,
#         Idade INTEGER NOT NULL,
#         Genero TEXT NOT NULL,
#         Historico_Medico TEXT NOT NULL,
#         PacienteNivelConscienciaId INTEGER,
#         FOREIGN KEY (PacienteNivelConscienciaId) REFERENCES PacienteNivelConsciencia(Id)
#     );
#     """,
#     """
#     CREATE TABLE PacienteCuidador (
#         Id INTEGER PRIMARY KEY,
#         PacienteId INTEGER,
#         CuidadorId INTEGER,
#         FOREIGN KEY (PacienteId) REFERENCES Paciente(Id),
#         FOREIGN KEY (CuidadorId) REFERENCES Cuidador(Id)
#     );
#     """,
#     """
#     CREATE TABLE Cuidador (
#         Id INTEGER PRIMARY KEY,
#         Nome TEXT NOT NULL,
#         Morada TEXT NOT NULL,
#         Email TEXT NOT NULL,
#         Telemovel TEXT NOT NULL,
#         Password TEXT NOT NULL,
#         TipoId INTEGER,
#         FOREIGN KEY (TipoId) REFERENCES Tipo(Id)
#     );
#     """,
#     """
#     CREATE TABLE Tipo (
#         Id INTEGER PRIMARY KEY,
#         Parentesco TEXT,
#         Especializacao TEXT,
#         Categoria TEXT
#     );
#     """,
#     """
#     INSERT INTO Tipo (Parentesco, Categoria) VALUES
#     ('Pai', 'Familia'),
#     ('Mãe', 'Familia'),
#     ('Filho/a', 'Familia'),
#     ('Tio/a', 'Familia'),
#     ('Primo/a', 'Familia'),
#     ('Avo/a', 'Familia');
#     """,
#     """
#     INSERT INTO Tipo (Especializacao, Categoria) VALUES
#     ('Medico/a', 'Equipa Medica'),
#     ('Enfermeiro/a', 'Equipa Medica');
#     """,
#     """
#     CREATE TABLE AplicacaoEstimulosPaciente (
#         Id INTEGER PRIMARY KEY,
#         PacienteId INTEGER NOT NULL,
#         EstimuloId INTEGER NOT NULL,
#         Duracao INTEGER,
#         FOREIGN KEY (PacienteId) REFERENCES Paciente(Id),
#         FOREIGN KEY (EstimuloId) REFERENCES Estimulos(Id)
#     );
#     """,
#     """
#     CREATE TABLE Estimulos (
#         Id INTEGER PRIMARY KEY,
#         Tipo TEXT,
#         Descricao TEXT,
#         Intensidade INTEGER,
#         Frequencia INTEGER
#     );
#     """,
#     """
#     CREATE TABLE Personalizacao (
#         Id INTEGER PRIMARY KEY,
#         PacienteId INTEGER NOT NULL,
#         EstimuloId INTEGER NOT NULL,
#         Preferencias TEXT,
#         FOREIGN KEY (PacienteId) REFERENCES Paciente(Id),
#         FOREIGN KEY (EstimuloId) REFERENCES Estimulos(Id)
#     );
#     """,
#     """
#     CREATE TABLE Relatorio (
#         Id INTEGER PRIMARY KEY,
#         PacienteId INTEGER,
#         Data_relatorio DATE,
#         Detalhes TEXT,
#         FOREIGN KEY (PacienteId) REFERENCES Paciente(Id)
#     );
#     """,
#     """
#     CREATE TABLE PacienteNivelConsciencia (
#         Id INTEGER PRIMARY KEY,
#         PacienteId INTEGER,
#         Descricao TEXT,
#         Data_Registo DATE,
#         Escala TEXT,
#         FOREIGN KEY (PacienteId) REFERENCES Paciente(Id)
#     );
#     """,
#     """
#     CREATE TABLE NivelConsciencia (
#         Id INTEGER PRIMARY KEY,
#         Descricao TEXT,
#         Escala INTEGER
#     );
#     """
# ]

# # Juntar os comandos que estão em lista, numa string
# sql_script = "".join(sql_commands)

# # Executar o script SQL
# cursor.executescript(sql_script)

# # Fazer alterações
# connector.commit()

# # Fechar a conexão
# connector.close()
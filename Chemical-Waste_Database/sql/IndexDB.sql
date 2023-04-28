CREATE INDEX chemical_name_idx
ON chemical (name);

CREATE INDEX environment_type_idx
ON environment (Env_type);

CREATE INDEX epa_type_idx
ON epa (e_type);

CREATE INDEX industry_id_idx
ON industry (id);

CREATE INDEX login_name_idx
ON login (username);

CREATE INDEX register_name_idx
ON register (username);

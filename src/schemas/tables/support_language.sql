CREATE TABLE support_language (
    id TEXT PRIMARY KEY DEFAULT UPPER(REPLACE(uuid_generate_v4()::TEXT, '-', '')),
    type_id TEXT NOT NULL,
    lang_cd TEXT NOT NULL UNIQUE,
    language TEXT NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100) DEFAULT 'SYSTEM',
    modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_by VARCHAR(100) DEFAULT 'SYSTEM',
    version INT DEFAULT 1,
    is_deleted BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (type_id) REFERENCES problem_type(id) ON DELETE CASCADE
);

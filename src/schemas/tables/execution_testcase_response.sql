CREATE TABLE execution_testcase_response (
    id TEXT PRIMARY KEY DEFAULT UPPER(REPLACE(uuid_generate_v4()::TEXT, '-', '')),
    job_id TEXT NOT NULL,
    testcase_id TEXT NOT NULL,
    status TEXT NOT NULL,
    runtime TEXT,
    output TEXT,
    error_msg TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(100) DEFAULT 'SYSTEM',
    modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_by VARCHAR(100) DEFAULT 'SYSTEM',
    version INT DEFAULT 1,
    is_deleted BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (job_id) REFERENCES code_execution_job(id) ON DELETE CASCADE,
    FOREIGN KEY (testcase_id) REFERENCES problem_test_cases(id) ON DELETE CASCADE
);

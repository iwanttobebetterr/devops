CREATE TABLE IF NOT EXISTS task (
    id SERIAL PRIMARY KEY NOT NULL, task text,
    status INTEGER DEFAULT 0
);
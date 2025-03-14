CREATE TABLE IF NOT EXISTS todos (
    id SERIAL PRIMARY KEY,
    text VARCHAR(255) NOT NULL,
    category VARCHAR(50),
    priority INTEGER,
    due_date TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed BOOLEAN DEFAULT FALSE
);

CREATE INDEX IF NOT EXISTS idx_todos_category ON todos(category);
CREATE INDEX IF NOT EXISTS idx_todos_priority ON todos(priority);
CREATE INDEX IF NOT EXISTS idx_todos_due_date ON todos(due_date);
CREATE INDEX IF NOT EXISTS idx_todos_completed ON todos(completed);
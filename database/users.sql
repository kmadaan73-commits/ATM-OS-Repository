
CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),

    email VARCHAR(255) UNIQUE NOT NULL,
    mobile VARCHAR(20),

    password_hash TEXT NOT NULL,

    company_id BIGINT,

    status ENUM(
        'ACTIVE',
        'INACTIVE',
        'BLOCKED'
    ) DEFAULT 'ACTIVE',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);

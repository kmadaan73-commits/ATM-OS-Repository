CREATE TABLE users (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    company_id BIGINT NOT NULL,

    employee_code VARCHAR(30) UNIQUE,

    full_name VARCHAR(255) NOT NULL,

    email VARCHAR(255) UNIQUE,

    mobile VARCHAR(20),

    password_hash TEXT,

    role VARCHAR(100),

    department VARCHAR(100),

    status ENUM('ACTIVE','INACTIVE','BLOCKED') DEFAULT 'ACTIVE',

    last_login DATETIME,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================
-- ATM Operating System (AOS)
-- Companies
-- ==========================================

CREATE TABLE companies (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    company_code VARCHAR(30) UNIQUE NOT NULL,

    company_name VARCHAR(255) NOT NULL,

    legal_name VARCHAR(255),

    industry VARCHAR(100),

    gst_number VARCHAR(30),

    pan_number VARCHAR(20),

    email VARCHAR(255),

    phone VARCHAR(30),

    website VARCHAR(255),

    status ENUM(
        'ACTIVE',
        'INACTIVE'
    ) DEFAULT 'ACTIVE',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);

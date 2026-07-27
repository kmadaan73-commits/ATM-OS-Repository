-- ==========================================
-- ATM Operating System (AOS)
-- Branches
-- ==========================================

CREATE TABLE branches (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    company_id BIGINT NOT NULL,

    branch_code VARCHAR(30),

    branch_name VARCHAR(255),

    address TEXT,

    city VARCHAR(100),

    state VARCHAR(100),

    country VARCHAR(100),

    pincode VARCHAR(20),

    phone VARCHAR(30),

    email VARCHAR(255),

    status ENUM(
        'ACTIVE',
        'INACTIVE'
    ) DEFAULT 'ACTIVE',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_branch_company
        FOREIGN KEY(company_id)
        REFERENCES companies(id)

);

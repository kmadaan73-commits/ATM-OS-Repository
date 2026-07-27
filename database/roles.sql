
-- ==========================================
-- ATM Operating System (AOS)
-- Roles Table
-- ==========================================

CREATE TABLE roles (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    role_code VARCHAR(50) UNIQUE NOT NULL,

    role_name VARCHAR(150) NOT NULL,

    description TEXT,

    system_role BOOLEAN DEFAULT FALSE,

    status ENUM(
        'ACTIVE',
        'INACTIVE'
    ) DEFAULT 'ACTIVE',

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP

);

INSERT INTO roles
(role_code,role_name,description,system_role)
VALUES

('SUPER_ADMIN','Super Administrator','Full system access',TRUE),

('COMPANY_OWNER','Company Owner','Business owner',TRUE),

('CEO','Chief Executive Officer','Executive management',TRUE),

('PROJECT_MANAGER','Project Manager','Project execution',TRUE),

('PURCHASE_MANAGER','Purchase Manager','Purchase operations',TRUE),

('SALES_MANAGER','Sales Manager','Sales operations',TRUE),

('INVENTORY_MANAGER','Inventory Manager','Inventory control',TRUE),

('FINANCE_MANAGER','Finance Manager','Finance operations',TRUE),

('HR_MANAGER','HR Manager','Human resources',TRUE),

('EMPLOYEE','Employee','General employee',TRUE),

('AI_AGENT','AI Agent','System AI Agent',TRUE);

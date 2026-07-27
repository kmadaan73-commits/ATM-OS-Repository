
-- ==========================================
-- ATM Operating System (AOS)
-- Permissions Table
-- ==========================================

CREATE TABLE permissions (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    permission_code VARCHAR(100) UNIQUE NOT NULL,

    permission_name VARCHAR(200) NOT NULL,

    module_name VARCHAR(100) NOT NULL,

    action_name VARCHAR(50) NOT NULL,

    description TEXT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

INSERT INTO permissions
(permission_code,permission_name,module_name,action_name,description)
VALUES

('USER_CREATE','Create User','USERS','CREATE','Create new users'),
('USER_VIEW','View User','USERS','VIEW','View user details'),
('USER_UPDATE','Update User','USERS','UPDATE','Update user'),
('USER_DELETE','Delete User','USERS','DELETE','Delete user'),

('ROLE_CREATE','Create Role','ROLES','CREATE','Create role'),
('ROLE_VIEW','View Role','ROLES','VIEW','View roles'),
('ROLE_UPDATE','Update Role','ROLES','UPDATE','Update role'),
('ROLE_DELETE','Delete Role','ROLES','DELETE','Delete role'),

('PRODUCT_CREATE','Create Product','PRODUCTS','CREATE','Create product'),
('PRODUCT_VIEW','View Product','PRODUCTS','VIEW','View products'),
('PRODUCT_UPDATE','Update Product','PRODUCTS','UPDATE','Update product'),
('PRODUCT_DELETE','Delete Product','PRODUCTS','DELETE','Delete product'),

('PURCHASE_CREATE','Create Purchase','PURCHASE','CREATE','Create purchase'),
('PURCHASE_APPROVE','Approve Purchase','PURCHASE','APPROVE','Approve purchase'),

('SALES_CREATE','Create Sales','SALES','CREATE','Create sales'),
('SALES_APPROVE','Approve Sales','SALES','APPROVE','Approve sales'),

('INVENTORY_VIEW','View Inventory','INVENTORY','VIEW','Inventory access'),

('AI_AGENT_EXECUTE','Execute AI Agent','AI','EXECUTE','Run AI agents'),

('SYSTEM_SETTINGS','System Settings','SYSTEM','ADMIN','Manage system settings');

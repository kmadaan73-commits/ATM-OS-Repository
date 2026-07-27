
-- ==========================================
-- ATM Operating System (AOS)
-- Role Permissions Mapping
-- ==========================================

CREATE TABLE role_permissions (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    role_id BIGINT NOT NULL,

    permission_id BIGINT NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE KEY uk_role_permission (role_id, permission_id),

    CONSTRAINT fk_role_permission_role
        FOREIGN KEY (role_id)
        REFERENCES roles(id),

    CONSTRAINT fk_role_permission_permission
        FOREIGN KEY (permission_id)
        REFERENCES permissions(id)

);

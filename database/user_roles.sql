
-- ==========================================
-- ATM Operating System (AOS)
-- User Roles Mapping
-- ==========================================

CREATE TABLE user_roles (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    user_id BIGINT NOT NULL,

    role_id BIGINT NOT NULL,

    assigned_by BIGINT,

    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE KEY uk_user_role (user_id, role_id),

    CONSTRAINT fk_user_roles_user
        FOREIGN KEY (user_id)
        REFERENCES users(id),

    CONSTRAINT fk_user_roles_role
        FOREIGN KEY (role_id)
        REFERENCES roles(id)

);

-- ======================================================
-- ATM OS
-- Core Database Schema v0.1
-- ======================================================

CREATE DATABASE IF NOT EXISTS atm_os;

USE atm_os;

-- ==========================================
-- USERS
-- ==========================================

CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(200) NOT NULL,
    email VARCHAR(200) UNIQUE,
    mobile VARCHAR(20),
    password_hash TEXT,
    status ENUM('ACTIVE','INACTIVE','BLOCKED') DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================
-- ROLES
-- ==========================================

CREATE TABLE roles (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(100) UNIQUE,
    description TEXT
);

-- ==========================================
-- USER ROLES
-- ==========================================

CREATE TABLE user_roles (
    user_id BIGINT,
    role_id BIGINT,
    PRIMARY KEY(user_id,role_id)
);

-- ==========================================
-- COMPANIES
-- ==========================================

CREATE TABLE companies (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(255),
    industry_type VARCHAR(100),
    gst_number VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================
-- BRANCHES
-- ==========================================

CREATE TABLE branches (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    company_id BIGINT,
    branch_name VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100)
);

-- ==========================================
-- PRODUCTS
-- ==========================================

CREATE TABLE products (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255),
    generic_name VARCHAR(255),
    brand VARCHAR(255),
    category VARCHAR(150),
    hsn_code VARCHAR(50),
    gst_percent DECIMAL(5,2)
);

-- ==========================================
-- PRODUCT BATCHES
-- ==========================================

CREATE TABLE product_batches (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    product_id BIGINT,
    batch_no VARCHAR(100),
    manufacturing_date DATE,
    expiry_date DATE,
    purchase_price DECIMAL(12,2),
    selling_price DECIMAL(12,2),
    mrp DECIMAL(12,2)
);

-- ==========================================
-- SUPPLIERS
-- ==========================================

CREATE TABLE suppliers (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(255),
    contact_person VARCHAR(255),
    mobile VARCHAR(20),
    email VARCHAR(200),
    city VARCHAR(100)
);

-- ==========================================
-- CUSTOMERS
-- ==========================================

CREATE TABLE customers (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(255),
    customer_type VARCHAR(100),
    mobile VARCHAR(20),
    email VARCHAR(200),
    city VARCHAR(100)
);

-- ==========================================
-- INVENTORY
-- ==========================================

CREATE TABLE inventory (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    batch_id BIGINT,
    quantity DECIMAL(12,2),
    reserved_quantity DECIMAL(12,2),
    warehouse VARCHAR(150),
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

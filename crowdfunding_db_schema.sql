CREATE TABLE categories (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE subcategories (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL
);

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE campaigns (
    cf_id SERIAL PRIMARY KEY,
    contact_id INTEGER REFERENCES contacts(contact_id), 
    company_name VARCHAR(255),
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(50),
    backers_count INTEGER,
    country VARCHAR(50),
    currency VARCHAR(50),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(50) REFERENCES categories(category_id),
    subcategory_id VARCHAR(50) REFERENCES subcategories(subcategory_id)
);
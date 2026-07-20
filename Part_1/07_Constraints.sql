-- NOT NULL, UNIQUE, DEFAULT, CHECK 
DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE
    basics.accounts (
        id SERIAL PRIMARY KEY,
        fullname TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE,
        is_active BOOLEAN DEFAULT TRUE,
        age INTEGER CHECK (age >= 18),
        created_at TIMESTAMP DEFAULT NOW ()
    );

INSERT INTO
    basics.accounts (fullname, email, is_active, age)
VALUES
    ('Om mishra', 'omm5000@gmail.com', true, 19),
    ('Synthe Mishra', 'synthe@gmail.com', false, 23),
    ('Ranjeet Mishra', 'ranjeet@gmail.com', true, 43),
    ('Banani Mishra', 'banani@gmail.com', true, 39),

SELECT * FROM basics.accounts;

SELECT * FROM basics.accounts WHERE is_active;
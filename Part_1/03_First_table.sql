DROP TABLE IF EXISTS basics.students;

CREATE TABLE
    basics.students (
        -- SERIAL creates an auto-incrementing integer (1, 2, 3, ...)
        -- TIMESTAMP stores both date and time
        -- DEFAULT means if no value is provided, NOW() will be used
        id SERIAL PRIMARY KEY,
        name TEXT NOT NULL,
        email TEXT NOT NULL UNIQUE,
        age INTEGER CHECK (age >= 18) NOT NULL,
        created_at TIMESTAMP DEFAULT NOW ()
    );

-- Insert some data
INSERT INTO
    basics.students (name, email, age)
VALUES
    ('Omm', 'omm5000@gmail.com', 23),
    ('Synthe', 'synthemishra@gmail.com', 22),
    ('Ranjeet', 'mailtoranjeet@gmail.com', 52),
    ('Banani', 'mailtobanani@gmail.com', 48),
    ('Doggo', 'doggo@gmail.com', 19);

SELECT
    id,
    name,
    email,
    age,
    TO_CHAR (created_at, 'YYYY-MM-DD HH24:MI:SS') AS created_at
FROM
    basics.students;

-- T0_CHAR will only show the year month day hours minutes and seconds and skip the milliseconds.
--* To run the file execute command -> psql -U postgres -d postgresql_part1 -f 03_First_table.sql
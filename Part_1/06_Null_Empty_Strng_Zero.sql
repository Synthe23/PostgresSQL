-- null - unknown/missing vals
-- empty string - known string values but it doesn't contain any characters
-- zero - actual numeric value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples(
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);

INSERT INTO basics.value_examples(nickname, bio, score)
VALUES
('xyz', 'Cricket Player', 73),
('abc', 'Football Player', 3),
(null, 'Learning PostgresSQL', 20),
('', 'empty nick name', 0),
('john', null, null),
('sangam', '', 0);

-- To display whole value_examples table
SELECT * FROM basics.value_examples;

-- To display where nickname is NULL
SELECT * FROM basics.value_examples WHERE nickname IS NULL;

-- To display where nickname is ''
SELECT * FROM basics.value_examples WHERE nickname = '';

-- To display where score is 0
SELECT * FROM basics.value_examples WHERE score = 0;

-- To display where score is NULL
SELECT * FROM basics.value_examples WHERE score IS NULL;

-- To display where the nickname is NOT NULL
SELECT * FROM basics.value_examples WHERE nickname IS NOT NULL;

-- To display where score is greater than equal to 20
SELECT * FROM basics.value_examples WHERE score >= 20;
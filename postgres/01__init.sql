-- structure setup
BEGIN;

CREATE TABLE IF NOT EXISTS users (
    id SERIAL NOT NULL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS posts (
  id SERIAL NOT NULL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title TEXT NOT NULL
);

COMMIT;

-- data setup
BEGIN;

INSERT INTO users (id, username, email) 
VALUES (1, 'user1', 'user1@example.com');

INSERT INTO users (id, username, email) 
VALUES (2, 'user2', 'user2@example.com');

INSERT INTO posts (user_id, title)
VALUES (1, 'Super Post');

INSERT INTO posts (user_id, title)
VALUES (1, 'Another Super Post');

INSERT INTO posts (user_id, title)
VALUES (1, 'Amazing Post');

INSERT INTO posts (user_id, title)
VALUES (2, 'Single Post');

COMMIT;

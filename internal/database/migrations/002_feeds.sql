-- +goose Up
CREATE TABLE feeds (
       id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
       name VARCHAR(255) NOT NULL,
       url TEXT UNIQUE NOT NULL,
       user_id INT REFERENCES users(id) ON DELETE CASCADE,
       created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
       modified_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- +goose Down
DROP TABLE feeds;

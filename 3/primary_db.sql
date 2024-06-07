-- Schema for primary_db
CREATE TABLE courses (
                         id serial PRIMARY KEY,
                         title_translations jsonb NOT NULL DEFAULT '{}'::jsonb,
                         description text,
                         price decimal(10, 2) NOT NULL DEFAULT 0.00,
                         created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
                       id serial PRIMARY KEY,
                       name varchar(255) NOT NULL,
                       email varchar(255) UNIQUE NOT NULL,
                       external_id varchar NOT NULL,
                       age int NOT NULL,
                       created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                       updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
                        id serial PRIMARY KEY,
                        user_id int NOT NULL,
                        course_id int NOT NULL,
                        order_date date NOT NULL,
                        amount decimal(10, 2) NOT NULL,
                        status varchar(50) NOT NULL DEFAULT 'pending',
                        created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                        updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

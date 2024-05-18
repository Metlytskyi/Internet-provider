DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;

CREATE TABLE roles
(
    role_id INT GENERATED ALWAYS AS IDENTITY,
    name    VARCHAR(255) NOT NULL,
    PRIMARY KEY (role_id)
);

CREATE TABLE status
(
    status_id INT GENERATED ALWAYS AS IDENTITY,
    status    VARCHAR(255) NOT NULL,
    PRIMARY KEY (status_id)
);

CREATE TABLE users
(
    user_id   INT GENERATED ALWAYS AS IDENTITY,
    status_id INT NOT NULL,
    email     VARCHAR(255) NOT NULL,
    name      VARCHAR(255) NOT NULL,
    password  VARCHAR(255) NOT NULL,
    role_id   INT          NOT NULL,
    surname   VARCHAR(255) NOT NULL,
    balance   NUMERIC,
    PRIMARY KEY (user_id),
    CONSTRAINT fk_roles FOREIGN KEY (role_id) REFERENCES roles (role_id),
    CONSTRAINT fk_status FOREIGN KEY (status_id) REFERENCES status (status_id)
);
CREATE TABLE services
(
    service_id  INT GENERATED ALWAYS AS IDENTITY,
    name        VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    price       NUMERIC,
    PRIMARY KEY (service_id)

);

CREATE TABLE orders
(
    orderId         INT GENERATED ALWAYS AS IDENTITY,
    user_id    INT NOT NULL,
    service_id INT NOT NULL,
    PRIMARY KEY (orderId),
    CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users (user_id),
    CONSTRAINT fk_service FOREIGN KEY (service_id) REFERENCES services (service_id)
);

INSERT INTO users (name, surname, email, password, balance)
values('Name', 'Uname', 'nameu_m@gmail.com', 1234, 1000);










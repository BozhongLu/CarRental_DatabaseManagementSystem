CREATE TABLE CarClass
(
    name         VARCHAR(50)  NOT NULL PRIMARY KEY,
    daily_price  FLOAT        NOT NULL,
    availability INT          NOT NULL,
    num_seats    INT          NOT NULL,
    features     VARCHAR(200) NOT NULL,
    address      VARCHAR(100) NOT NULL,
    FOREIGN KEY (address) REFERENCES Location (address)
);

CREATE TABLE Customer
(
    email VARCHAR(50) NOT NULL PRIMARY KEY,
    name  VARCHAR(50) NOT NULL,
    phone BIGINT      NOT NULL,

);

CREATE TABLE Discount
(
    discount_code  INT   NOT NULL PRIMARY KEY,
    discount_value FLOAT NOT NULL,
    type           VARCHAR(30),
    start_date     DATE  NOT NULL,
    expiry_date    DATE  NOT NULL
);

CREATE TABLE Car
(
    registration_num BIGINT       NOT NULL PRIMARY KEY,
    make             VARCHAR(30)  NOT NULL,
    plate_Number     VARCHAR(50)  NOT NULL UNIQUE,
    model            VARCHAR(20)  NOT NULL,
    color            VARCHAR(20)  NOT NULL,
    purchase_date    DATE         NOT NULL,
    milage           INT          NOT NULL,
    name             VARCHAR(50)  NOT NULL,
    employee_id      BIGINT       NOT NULL,
    description      VARCHAR(200) NOT NULL,
    FOREIGN KEY (name) REFERENCES CarClass (name),
    FOREIGN KEY (employee_id) REFERENCES Employee (employee_id)
);

CREATE TABLE Driver
(
    licence_number VARCHAR(50) NOT NULL PRIMARY KEY,
    name           VARCHAR(50) NOT NULL,
    dob            DATE        NOT NULL,
    licence_expiry DATE        NOT NULL
);


CREATE TABLE Location(
    address VARCHAR(50) not null PRIMARY KEY,
    hours VARCHAR(50) NOT NULL,
    name VARCHAR(30) NOT NULL UNIQUE,
    phone INT NOT NULL UNIQUE
);

CREATE TABLE Employee(
    employee_id INT not null PRIMARY KEY,
    phone INT NOT NULL UNIQUE,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    salary FLOAT(16) NOT NULL,
    start_date DATE NOT NULL,
    job_title VARCHAR(30),
    dob DATE NOT NULL
);

CREATE TABLE MaintenanceOperation(
    opid INT not null PRIMARY KEY,
    type VARCHAR(30) NOT NULL,
    begin_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    registration_num INT NOT NULL,
    FOREIGN KEY (registration_num) REFERENCES Car
);


CREATE TABLE Rental(
    rental_id INT not null PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    FOREIGN KEY (name) REFERENCES CarClass,
    license_number VARCHAR(50) NOT NULL,
    FOREIGN KEY (license_number) REFERENCES Driver,
    email VARCHAR(50) NOT NULL,
    FOREIGN KEY (email) REFERENCES Customer,
    card_number BIGINT NOT NULL,
    FOREIGN KEY (card_number) REFERENCES Payment,
    address VARCHAR(50) NOT NULL,
    FOREIGN KEY (address) REFERENCES Location
);

CREATE TABLE Maintenance(
    employee_id INT not null PRIMARY KEY,
    FOREIGN KEY (employee_id) REFERENCES Employee,
    license_number VARCHAR(50) NOT NULL,
    license_expiry DATE NOT NULL
);

CREATE TABLE CustomerService(
    employee_id INT not null PRIMARY KEY,
    FOREIGN KEY (employee_id) REFERENCES Employee
)

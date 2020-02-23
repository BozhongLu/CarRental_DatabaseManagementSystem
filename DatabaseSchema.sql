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


CREATE TABLE Location
(
    address VARCHAR(50) not null PRIMARY KEY,
    hours   VARCHAR(50) NOT NULL,
    name    VARCHAR(30) NOT NULL UNIQUE,
    phone   INT         NOT NULL UNIQUE
);

CREATE TABLE Employee
(
    employee_id INT         not null PRIMARY KEY,
    phone       INT         NOT NULL UNIQUE,
    name        VARCHAR(30) NOT NULL,
    email       VARCHAR(30) NOT NULL UNIQUE,
    salary      FLOAT(16)   NOT NULL,
    start_date  DATE        NOT NULL,
    job_title   VARCHAR(30),
    dob         DATE        NOT NULL
);


CREATE TABLE MaintenanceOperation
(
    opid             INT         not null PRIMARY KEY,
    type             VARCHAR(30) NOT NULL,
    begin_time       TIMESTAMP   NOT NULL,
    end_time         TIMESTAMP   NOT NULL,
    registration_num INT         NOT NULL,
    FOREIGN KEY (registration_num) REFERENCES Car
);


CREATE TABLE Rental
(
    rental_id      INT         not null PRIMARY KEY,
    name           VARCHAR(50) NOT NULL,
    FOREIGN KEY (name) REFERENCES CarClass,
    license_number VARCHAR(50) NOT NULL,
    FOREIGN KEY (license_number) REFERENCES Driver,
    email          VARCHAR(50) NOT NULL,
    FOREIGN KEY (email) REFERENCES Customer,
    card_number    BIGINT      NOT NULL,
    FOREIGN KEY (card_number) REFERENCES Payment,
    address        VARCHAR(50) NOT NULL,
    FOREIGN KEY (address) REFERENCES Location
);

CREATE TABLE Maintenance
(
    employee_id    INT         not null PRIMARY KEY,
    FOREIGN KEY (employee_id) REFERENCES Employee,
    license_number VARCHAR(50) NOT NULL,
    license_expiry DATE        NOT NULL
);

CREATE TABLE CustomerService
(
    employee_id    INT         not null PRIMARY KEY,
    FOREIGN KEY (employee_id) REFERENCES Employee
);


CREATE TABLE Member (
  Email             VARCHAR(50) NOT NULL PRIMARY KEY,
  Password          VARCHAR(50) NOT NULL,
  Registration_date DATE        NOT NULL
);

CREATE TABLE Payment (
  Card_number     BIGINT      NOT NULL PRIMARY KEY,
  Cardholder      VARCHAR(50) NOT NULL,
  Cvc             INT         NOT NULL,
  Billing_address VARCHAR(50) NOT NULL,
  Expiry_date     TIME        NOT NULL
);

-- TODO after rental is done
CREATE TABLE AdditionalPurchase (
  Rental_id INT         NOT NULL,
  FOREIGN KEY (Rental_id) REFERENCES rental,
  Product   VARCHAR(50) NOT NULL PRIMARY KEY,
  Quantity  INT         NOT NULL,
  Price     FLOAT       NOT NULL
);

-- TODO After Driver and Rental
CREATE TABLE AdditionalDrivers (
  license_number varchar(10),
  rental_id      INT,
  PRIMARY KEY (license_number, rental_id),
  FOREIGN KEY (license_number) REFERENCES Driver,
  FOREIGN KEY (rental_id) REFERENCES Rental
);

-- TODO After Rental and Discount
CREATE TABLE appliedTo (
  Discount_code INT,
  rental_id     INT,
  PRIMARY KEY (Discount_code, rental_id),
  FOREIGN KEY (Discount_code) REFERENCES Discount,
  FOREIGN KEY (rental_id) REFERENCES Rental
);

-- TODO After Rental and Member
CREATE TABLE earnsPoints (
  rental_id INT,
  email     VARCHAR(50),
  PRIMARY KEY (rental_id),
  FOREIGN KEY (rental_id) REFERENCES Rental,
  FOREIGN KEY (email) REFERENCES Member
);


CREATE TABLE droppedOffAt (
  droppedOffTime TIMESTAMP,
  Rental_id      INT,
  name           VARCHAR(50),
  license_number VARCHAR(10),
  email          VARCHAR(50),
  card_number    INT,
  address        VARCHAR(50) NOT NULL,
  PRIMARY KEY (Rental_id),
  FOREIGN KEY (address) REFERENCES location
);

CREATE TABLE pickedUpAt (
  pickedUpTime   TIMESTAMP,
  Rental_id      INT,
  name           VARCHAR(50),
  license_number VARCHAR(10),
  email          VARCHAR(50),
  card_number    INT,
  address        VARCHAR(50) NOT NULL,
  PRIMARY KEY (Rental_id),
  FOREIGN KEY (address) REFERENCES location
);


CREATE TABLE redeemsPoints (
  discount_code INT,
  email         VARCHAR(50),
  amt_of_points INT NOT NULL,
  PRIMARY KEY (discount_code, email),
  FOREIGN KEY (discount_code) REFERENCES discount,
  FOREIGN KEY (email) REFERENCES Member
);


CREATE TABLE Sells (
  rental_id   INT,
  employee_id INTEGER,
  PRIMARY KEY (rental_id),
  FOREIGN KEY (rental_id) REFERENCES rental,
  FOREIGN KEY (employee_id) REFERENCES customerservice
);


CREATE TABLE transportation (
  employee_id      INT,
  registration_num BIGINT,
  address          VARCHAR(50),
  date             DATE,
  travel_time      TIME,
  PRIMARY KEY (employee_id, registration_num, address),
  FOREIGN KEY (employee_id) REFERENCES maintenance,
  FOREIGN KEY (registration_num) REFERENCES car,
  FOREIGN KEY (address) REFERENCES location
);

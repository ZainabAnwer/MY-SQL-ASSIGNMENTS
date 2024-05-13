CREATE DATABASE Library_management;
USE Library_management;
-- Table 1: Books

CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  genre VARCHAR(255),
  price DECIMAL(10,2)
);


-- Table 2: Customers

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(20)
);


-- Table 3: Orders

CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_price DECIMAL(10,2)
);


-- Table 4: Order_Items

CREATE TABLE Order_Items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity INT,
  item_price DECIMAL(10,2)
);


-- Table 5: Authors

CREATE TABLE Authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(255),
  country VARCHAR(255),
  birth_date DATE
);


-- Table 6: Publishers

CREATE TABLE Publishers (
  publisher_id INT PRIMARY KEY,
  publisher_name VARCHAR(255),
  location VARCHAR(255),
  established_year INT
);


-- Table 7: Genres

CREATE TABLE Genres (
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(255)
);


-- Table 8: Reviews

CREATE TABLE Reviews (
  review_id INT PRIMARY KEY,
  book_id INT,
  customer_id INT,
  review_text VARCHAR(1000),
  rating INT
);


-- Table 9: Discounts

CREATE TABLE Discounts (
  discount_id INT PRIMARY KEY,
  book_id INT,
  discount_percentage DECIMAL(5,2),
  start_date DATE,
  end_date DATE
);


-- Table 10: Employees

CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  employee_name VARCHAR(255),
  position VARCHAR(255),
  salary DECIMAL(10,2)
);

CREATE TABLE date_dimension (
  date_id INT PRIMARY KEY,
  full_date DATE NOT NULL,
  day_of_week VARCHAR(9) NOT NULL,
  month VARCHAR(9) NOT NULL,
  quarter VARCHAR(6) NOT NULL,
  year INT NOT NULL
);

CREATE TABLE product_dimension (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  product_category VARCHAR(255) NOT NULL,
  price DECIMAL(8,2) NOT NULL
);

CREATE TABLE customer_dimension (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(255) NOT NULL,
  customer_email VARCHAR(255) NOT NULL,
  customer_address VARCHAR(255) NOT NULL,
  customer_city VARCHAR(255) NOT NULL,
  customer_state VARCHAR(255) NOT NULL,
  customer_country VARCHAR(255) NOT NULL,
  customer_postal_code VARCHAR(255) NOT NULL
);

CREATE TABLE internet_sales_fact (
  sales_id INT PRIMARY KEY,
  date_id INT NOT NULL,
  product_id INT NOT NULL,
  customer_id INT NOT NULL,
  sales_quantity INT NOT NULL,
  sales_amount DECIMAL(8,2) NOT NULL,
  FOREIGN KEY (date_id) REFERENCES date_dimension(date_id),
  FOREIGN KEY (product_id) REFERENCES product_dimension(product_id),
  FOREIGN KEY (customer_id) REFERENCES customer_dimension(customer_id)
);

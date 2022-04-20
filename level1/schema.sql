use big_data;

DROP TABLE IF EXISTS review_id_table;
CREATE TABLE review_id_table (
    review_id VARCHAR(255) NOT NULL,
    customer_id BIGINT,
    product_id VARCHAR(16),
    product_parent BIGINT,
    review_date DATE, -- this should be in the formate yyyy-mm-dd
    PRIMARY KEY (review_id)
) ENGINE = InnoDB;

-- This table will contain only unique values
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id VARCHAR(16) NOT NULL,
    product_title TEXT,
    PRIMARY KEY (product_id)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id BIGINT NOT NULL,
    customer_count INT,
    PRIMARY KEY (customer_id)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS vine_table;
CREATE TABLE vine_table (
    review_id VARCHAR(255) NOT NULL,
    star_rating INT,
    helpful_votes INT,
    total_votes INT,
    vine VARCHAR(8),
    PRIMARY KEY (review_id)
) ENGINE = InnoDB;
DROP TABLE precious_things;


CREATE TABLE precious_things(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  stock_quantity INT4,
  buying_cost INT4,
  selling_price INT4
  -- source_id INT4 REFERENCES sources(id) ON DELETE CASCADE
);

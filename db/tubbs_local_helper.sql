DROP TABLE combined;
DROP TABLE precious_things;
DROP TABLE sources;

CREATE TABLE sources(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255)
);

CREATE TABLE precious_things(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255),
  stock_quantity INT4,
  buying_cost INT4,
  selling_price INT4,
  source_id INT4 REFERENCES sources(id) ON DELETE CASCADE
);

CREATE TABLE combined(
  precious_name VARCHAR(255) REFERENCES precious_things(name) ON DELETE CASCADE,
  precious_description VARCHAR(255) REFERENCES precious_things(description) ON DELETE CASCADE,
  precious_stock INT4 REFERENCES precious_things(stock_quantity) ON DELETE CASCADE,
  precious_cost INT4 REFERENCES precious_things(buying_cost) ON DELETE CASCADE,
  precious_price INT4 REFERENCES precious_things(selling_price) ON DELETE CASCADE,
  source_name VARCHAR(255) REFERENCES sources(name) ON DELETE CASCADE
);

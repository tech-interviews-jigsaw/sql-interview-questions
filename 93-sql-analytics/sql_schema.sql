drop table if exists subscription_activation;
CREATE TABLE IF NOT EXISTS subscription_activation (
  "customer_id" int,
  "activation_time" timestamp,
  "is_first_activation" boolean
);
INSERT INTO subscription_activation (
  "customer_id", "activation_time", "is_first_activation"
)
VALUES
  (1, '2018-01-08 07:00:00', true),
  (2, '2018-02-11 10:00:00', true),
  (3, '2018-02-14 02:00:00', true),
  (4, '2018-03-01 16:00:00', true),
  (4, '2018-05-08 13:00:00', false),
  (4, '2018-06-01 14:00:00', false),
  (5, '2018-02-27 17:00:00', true),
  (5, '2018-04-07 14:00:00', false),
  (6, '2018-04-19 03:00:00', true),
  (7, '2018-05-18 16:30:00', true),
  (8, '2018-06-01 13:00:00', true),
  (8, '2018-06-14 15:00:00', false),
  (9, '2018-06-03 17:30:00', true),
  (10, '2018-06-30 19:30:00', true);

drop table if exists subscription_cancellation;
CREATE TABLE IF NOT EXISTS subscription_cancellation (
  "customer_id" int,
  "cancellation_time" timestamp,
  "cancellation_reason" varchar(255)
);
INSERT INTO subscription_cancellation (
  "customer_id", "cancellation_time", "cancellation_reason"
)
VALUES
  (
    2, '2018-03-14 12:30:00', 'price'
  ),
  (
    4, '2018-04-07 14:30:00', 'trying service'
  ),
  (
    4, '2018-05-27 18:00:00', 'price'
  ),
  (
    5, '2018-03-21 06:30:00', 'too long to cook'
  ),
  (
    8, '2018-06-07 14:00:00', 'recipes'
  ),
  (
    8, '2018-06-22 09:20:00', 'trying service'
  ),
  (
    10, '2018-07-01 15:20:00', 'other'
  ),
  (
    11, '2018-07-05 17:00:00', 'billing issue'
  );

drop table if exists subscription_order;
CREATE TABLE IF NOT EXISTS subscription_order (
  "customer_id" int,
  "order_placed_at" timestamp,
  "scheduled_delivery_date" date,
  "scheduled_ship_date" date,
  "order_value" float,
  "order_servings" int,
  "order_recipes" int
);
INSERT INTO subscription_order (
  "customer_id", "order_placed_at", "scheduled_delivery_date",
  "scheduled_ship_date", "order_value",
  "order_servings", "order_recipes"
)
VALUES
  (
    1, '2018-01-08 07:05:00', '2018-01-12 00:00:00',
    '2018-01-10 00:00:00', 66.00, 2,
    3
  ),
  (
    1, '2018-01-15 04:00:00', '2018-01-19 00:00:00',
    '2018-01-17 00:00:00', 66.00, 2,
    3
  ),
  (
    1, '2018-02-24 04:00:00', '2018-02-28 00:00:00',
    '2018-02-26 00:00:00', 66.00, 2,
    3
  ),
  (
    1, '2018-03-14 04:00:00', '2018-03-18 00:00:00',
    '2018-03-16 00:00:00', 60.00, 3,
    2
  ),
  (
    2, '2018-02-11 10:05:00', '2018-02-15 00:00:00',
    '2018-02-14 00:00:00', 90.00, 3,
    3
  ),
  (
    2, '2018-02-27 04:00:00', '2018-03-03 00:00:00',
    '2018-03-02 00:00:00', 90.00, 3,
    3
  ),
  (
    3, '2018-02-14 02:05:00', '2018-02-18 00:00:00',
    '2018-02-18 00:00:00', 108.00, 4,
    3
  ),
  (
    3, '2018-03-07 04:00:00', '2018-03-11 00:00:00',
    '2018-03-11 00:00:00', 108.00, 4,
    3
  ),
  (
    3, '2018-04-01 04:00:00', '2018-04-05 00:00:00',
    '2018-04-05 00:00:00', 66.00, 2,
    3
  ),
  (
    4, '2018-03-01 16:05:00', '2018-03-05 00:00:00',
    '2018-03-03 00:00:00', 66.00, 2,
    3
  ),
  (
    4, '2018-05-08 13:05:00', '2018-05-12 00:00:00',
    '2018-05-10 00:00:00', 44.00, 2,
    2
  ),
  (
    4, '2018-05-15 04:00:00', '2018-05-19 00:00:00',
    '2018-05-17 00:00:00', 66.00, 2,
    3
  ),
  (
    4, '2018-05-22 04:00:00', '2018-05-26 00:00:00',
    '2018-05-24 00:00:00', 72.00, 4,
    2
  ),
  (
    5, '2018-02-27 17:05:00', '2018-03-03 00:00:00',
    '2018-03-02 00:00:00', 60.00, 3,
    2
  ),
  (
    5, '2018-04-07 17:05:00', '2018-04-11 00:00:00',
    '2018-04-10 00:00:00', 90.00, 3,
    3
  ),
  (
    5, '2018-04-26 04:00:00', '2018-04-30 00:00:00',
    '2018-04-29 00:00:00', 90.00, 3,
    3
  ),
  (
    6, '2018-04-19 03:05:00', '2018-04-23 00:00:00',
    '2018-04-22 00:00:00', 108.00, 4,
    3
  ),
  (
    6, '2018-05-30 04:00:00', '2018-06-03 00:00:00',
    '2018-06-02 00:00:00', 108.00, 4,
    3
  ),
  (
    6, '2018-06-17 04:00:00', '2018-06-21 00:00:00',
    '2018-06-20 00:00:00', 66.00, 2,
    3
  ),
  (
    7, '2018-05-18 16:35:00', '2018-05-22 00:00:00',
    '2018-05-22 00:00:00', 44.00, 2,
    2
  ),
  (
    7, '2018-05-25 04:00:00', '2018-05-29 00:00:00',
    '2018-05-29 00:00:00', 44.00, 2,
    2
  ),
  (
    8, '2018-06-14 15:05:00', '2018-06-18 00:00:00',
    '2018-06-18 00:00:00', 120.00, 3,
    4
  ),
  (
    8, '2018-06-21 04:00:00', '2018-06-25 00:00:00',
    '2018-06-25 00:00:00', 120.00, 3,
    4
  );

drop table if exists customer;
CREATE TABLE customer (
  "id" int,
  "name" varchar(255),
  "zip_code" varchar(9)
);
INSERT INTO customer ("id", "name", "zip_code")
VALUES
  (1, 'John Joe', '10001'),
  (2, 'Nathan Drake', '10001-000'),
  (3, 'ABC DEF', '22096'),
  (4, 'FirstName LastName', '30060'),
  (5, 'Jane Doe', '00000'),
  (6, 'Frodo Baggins', '10010'),
  (7, 'Hermione Granger', '12305'),
  (8, 'Steve Rodgers', '02569'),
  (9, 'Peter Rabbit', '12356'),
  (10, 'John Joe Jr.', '32056'),
  (11, 'Junior Park', '00579');
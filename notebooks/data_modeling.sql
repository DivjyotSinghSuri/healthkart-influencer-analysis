-- Databricks notebook source
CREATE DATABASE healthkart_db;

-- COMMAND ----------

CREATE OR REPLACE TABLE healthkart_db.influencers(
  id INT PRIMARY KEY,
  name VARCHAR(25) NOT NULL,
  gender VARCHAR(10) NOT NULL CONSTRAINT gender_check CHECK (Gender IN ('Male', 'Female', 'Others')),
  category VARCHAR(50) NOT NULL,
  follower_count INT NOT NULL,
  platform VARCHAR(50) NOT NULL
);

-- COMMAND ----------

INSERT INTO healthkart_db.influencers (id, name, gender, category, follower_count, platform) VALUES
(1, 'Aman Fit', 'Male', 'Fitness', 120000, 'Instagram'),
(2, 'Riya Wellness', 'Female', 'Wellness', 85000, 'Instagram'),
(3, 'Karan Muscle', 'Male', 'Bodybuilding', 200000, 'YouTube'),
(4, 'Sneha Yoga', 'Female', 'Yoga', 95000, 'Instagram'),
(5, 'Dev Strength', 'Male', 'Fitness', 150000, 'YouTube'),
(6, 'Neha Health', 'Female', 'Nutrition', 78000, 'Instagram'),
(7, 'Arjun Lifts', 'Male', 'Bodybuilding', 180000, 'YouTube'),
(8, 'Pooja Fitlife', 'Female', 'Fitness', 92000, 'Instagram'),
(9, 'Rohit Gains', 'Male', 'Bodybuilding', 210000, 'YouTube'),
(10, 'Meera Yoga', 'Female', 'Yoga', 87000, 'Instagram'),
(11, 'Vikas Bulk', 'Male', 'Fitness', 140000, 'Instagram'),
(12, 'Simran Health', 'Female', 'Nutrition', 73000, 'Instagram'),
(13, 'Rahul Beast', 'Male', 'Bodybuilding', 250000, 'YouTube'),
(14, 'Ananya Wellness', 'Female', 'Wellness', 82000, 'Instagram'),
(15, 'Sahil Fit', 'Male', 'Fitness', 135000, 'Instagram'),
(16, 'Kritika Yoga', 'Female', 'Yoga', 91000, 'Instagram'),
(17, 'Manish Muscle', 'Male', 'Bodybuilding', 195000, 'YouTube'),
(18, 'Isha Health', 'Female', 'Nutrition', 76000, 'Instagram'),
(19, 'Deepak Gains', 'Male', 'Fitness', 160000, 'YouTube'),
(20, 'Tanya Fit', 'Female', 'Fitness', 89000, 'Instagram'),
(21, 'Varun Bulk', 'Male', 'Bodybuilding', 175000, 'YouTube'),
(22, 'Shreya Yoga', 'Female', 'Yoga', 88000, 'Instagram'),
(23, 'Nikhil Strength', 'Male', 'Fitness', 145000, 'Instagram'),
(24, 'Radhika Health', 'Female', 'Nutrition', 79000, 'Instagram'),
(25, 'Abhishek Muscle', 'Male', 'Bodybuilding', 230000, 'YouTube'),
(26, 'Priya Wellness', 'Female', 'Wellness', 84000, 'Instagram'),
(27, 'Harsh Fit', 'Male', 'Fitness', 155000, 'Instagram'),
(28, 'Aditi Yoga', 'Female', 'Yoga', 92000, 'Instagram'),
(29, 'Suresh Gains', 'Male', 'Bodybuilding', 205000, 'YouTube'),
(30, 'Komal Health', 'Female', 'Nutrition', 77000, 'Instagram'),
(31, 'Rajat Strength', 'Male', 'Fitness', 148000, 'Instagram'),
(32, 'Nisha Fitlife', 'Female', 'Fitness', 86000, 'Instagram'),
(33, 'Akash Muscle', 'Male', 'Bodybuilding', 215000, 'YouTube'),
(34, 'Pallavi Yoga', 'Female', 'Yoga', 90000, 'Instagram'),
(35, 'Gaurav Bulk', 'Male', 'Fitness', 132000, 'Instagram'),
(36, 'Sonal Health', 'Female', 'Nutrition', 75000, 'Instagram'),
(37, 'Kunal Gains', 'Male', 'Bodybuilding', 190000, 'YouTube'),
(38, 'Ritu Wellness', 'Female', 'Wellness', 83000, 'Instagram'),
(39, 'Amit Fit', 'Male', 'Fitness', 142000, 'Instagram'),
(40, 'Neelam Yoga', 'Female', 'Yoga', 91000, 'Instagram'),
(41, 'Yash Muscle', 'Male', 'Bodybuilding', 225000, 'YouTube'),
(42, 'Divya Health', 'Female', 'Nutrition', 78000, 'Instagram'),
(43, 'Tarun Strength', 'Male', 'Fitness', 150000, 'Instagram'),
(44, 'Kavya Fit', 'Female', 'Fitness', 87000, 'Instagram'),
(45, 'Ramesh Bulk', 'Male', 'Bodybuilding', 185000, 'YouTube'),
(46, 'Sanya Yoga', 'Female', 'Yoga', 92000, 'Instagram'),
(47, 'Aditya Gains', 'Male', 'Fitness', 160000, 'Instagram'),
(48, 'Mitali Health', 'Female', 'Nutrition', 74000, 'Instagram'),
(49, 'Vivek Muscle', 'Male', 'Bodybuilding', 240000, 'YouTube'),
(50, 'Anjali Wellness', 'Female', 'Wellness', 86000, 'Instagram');

-- COMMAND ----------

CREATE OR REPLACE TABLE healthkart_db.posts(
  influencer_id INT FOREIGN KEY REFERENCES healthkart_db.influencers(id),
  platform VARCHAR(50) NOT NULL,
  date DATE NOT NULL,
  URL VARCHAR(50) NOT NULL,
  caption VARCHAR(50) NOT NULL,
  likes_count INT NOT NULL,
  comments_count INT NOT NULL
);

-- COMMAND ----------

INSERT INTO healthkart_db.posts (influencer_id, platform, date, URL, caption, likes_count, comments_count) VALUES
(1, 'Instagram', '2024-01-05', 'url1', 'Protein gains', 8500, 320),
(2, 'Instagram', '2024-01-06', 'url2', 'Healthy living tips', 6200, 210),
(3, 'YouTube', '2024-01-07', 'url3', 'Bulking diet plan', 15000, 800),
(4, 'Instagram', '2024-01-08', 'url4', 'Morning yoga flow', 7200, 250),
(5, 'YouTube', '2024-01-09', 'url5', 'Strength routine', 11000, 500),
(6, 'Instagram', '2024-01-10', 'url6', 'Nutrition hacks', 5800, 190),
(7, 'YouTube', '2024-01-11', 'url7', 'Mass gain tips', 14000, 700),
(8, 'Instagram', '2024-01-12', 'url8', 'Daily fitness', 7600, 260),
(9, 'YouTube', '2024-01-13', 'url9', 'Bodybuilding prep', 17000, 900),
(10, 'Instagram', '2024-01-14', 'url10', 'Yoga basics', 6900, 230),

(11, 'Instagram', '2024-01-15', 'url11', 'Workout tips', 8000, 300),
(12, 'Instagram', '2024-01-16', 'url12', 'Healthy snacks', 5600, 180),
(13, 'YouTube', '2024-01-17', 'url13', 'Extreme gains', 18000, 950),
(14, 'Instagram', '2024-01-18', 'url14', 'Wellness routine', 6400, 210),
(15, 'Instagram', '2024-01-19', 'url15', 'Gym motivation', 7700, 270),
(16, 'Instagram', '2024-01-20', 'url16', 'Stretching guide', 7100, 240),
(17, 'YouTube', '2024-01-21', 'url17', 'Muscle growth', 15500, 820),
(18, 'Instagram', '2024-01-22', 'url18', 'Diet tips', 5900, 200),
(19, 'YouTube', '2024-01-23', 'url19', 'Workout vlog', 12500, 600),
(20, 'Instagram', '2024-01-24', 'url20', 'Fitness hacks', 7300, 250),

(21, 'YouTube', '2024-01-25', 'url21', 'Strength gains', 13500, 680),
(22, 'Instagram', '2024-01-26', 'url22', 'Yoga session', 7000, 240),
(23, 'Instagram', '2024-01-27', 'url23', 'Gym routine', 8200, 310),
(24, 'Instagram', '2024-01-28', 'url24', 'Nutrition plan', 6100, 210),
(25, 'YouTube', '2024-01-29', 'url25', 'Body transformation', 16500, 880),
(26, 'Instagram', '2024-01-30', 'url26', 'Wellness tips', 6300, 220),
(27, 'Instagram', '2024-01-31', 'url27', 'Fitness goals', 7800, 280),
(28, 'Instagram', '2024-02-01', 'url28', 'Yoga routine', 7500, 260),
(29, 'YouTube', '2024-02-02', 'url29', 'Mass building', 17200, 910),
(30, 'Instagram', '2024-02-03', 'url30', 'Healthy habits', 6000, 200),

(31, 'Instagram', '2024-02-04', 'url31', 'Workout session', 8100, 300),
(32, 'Instagram', '2024-02-05', 'url32', 'Fitness lifestyle', 7200, 250),
(33, 'YouTube', '2024-02-06', 'url33', 'Gym vlog', 16000, 850),
(34, 'Instagram', '2024-02-07', 'url34', 'Morning yoga', 6900, 230),
(35, 'Instagram', '2024-02-08', 'url35', 'Strength tips', 8000, 290),
(36, 'Instagram', '2024-02-09', 'url36', 'Healthy diet', 5700, 180),
(37, 'YouTube', '2024-02-10', 'url37', 'Muscle gain plan', 15000, 780),
(38, 'Instagram', '2024-02-11', 'url38', 'Wellness tips', 6400, 210),
(39, 'Instagram', '2024-02-12', 'url39', 'Gym tips', 8300, 320),
(40, 'Instagram', '2024-02-13', 'url40', 'Yoga flow', 7100, 240),

(41, 'YouTube', '2024-02-14', 'url41', 'Transformation story', 17500, 920),
(42, 'Instagram', '2024-02-15', 'url42', 'Nutrition guide', 5800, 190),
(43, 'Instagram', '2024-02-16', 'url43', 'Workout routine', 7900, 270),
(44, 'Instagram', '2024-02-17', 'url44', 'Fitness tips', 7400, 250),
(45, 'YouTube', '2024-02-18', 'url45', 'Bodybuilding tips', 14500, 760),
(46, 'Instagram', '2024-02-19', 'url46', 'Yoga basics', 7200, 240),
(47, 'Instagram', '2024-02-20', 'url47', 'Strength training', 8100, 300),
(48, 'Instagram', '2024-02-21', 'url48', 'Diet advice', 5600, 180),
(49, 'YouTube', '2024-02-22', 'url49', 'Muscle building', 16800, 870),
(50, 'Instagram', '2024-02-23', 'url50', 'Wellness routine', 6500, 220);

-- COMMAND ----------

CREATE OR REPLACE TABLE healthkart_db.tracking_data(
  source VARCHAR(50) NOT NULL,
  campaign VARCHAR(50) NOT NULL,
  influencer_id INT FOREIGN KEY REFERENCES healthkart_db.influencers(id),
  user_id INT NOT NULL,
  product VARCHAR(50) NOT NULL,
  date DATE NOT NULL,
  orders INT NOT NULL,
  revenue DECIMAL(10,2) NOT NULL
);

-- COMMAND ----------

INSERT INTO healthkart_db.tracking_data 
(source, campaign, influencer_id, user_id, product, date, orders, revenue) VALUES
('Instagram', 'MB_Protein_Jan', 1, 101, 'Whey Protein', '2024-01-05', 25, 50000),
('Instagram', 'MB_Protein_Jan', 2, 102, 'Whey Protein', '2024-01-06', 18, 36000),
('YouTube', 'MB_Protein_Jan', 3, 103, 'Whey Protein', '2024-01-07', 40, 92000),
('Instagram', 'Yoga_Jan', 4, 104, 'Yoga Mat', '2024-01-08', 12, 12000),
('YouTube', 'MB_Bulk_Jan', 5, 105, 'Mass Gainer', '2024-01-09', 30, 75000),
('Instagram', 'HKVitals_Jan', 6, 106, 'Multivitamin', '2024-01-10', 22, 22000),
('YouTube', 'MB_Bulk_Jan', 7, 107, 'Mass Gainer', '2024-01-11', 35, 87000),
('Instagram', 'Fitness_Jan', 8, 108, 'Protein Bar', '2024-01-12', 20, 15000),
('YouTube', 'MB_Protein_Jan', 9, 109, 'Whey Protein', '2024-01-13', 45, 105000),
('Instagram', 'Yoga_Jan', 10, 110, 'Yoga Mat', '2024-01-14', 10, 10000),

('Instagram', 'Fitness_Feb', 11, 111, 'Protein Bar', '2024-02-01', 28, 21000),
('Instagram', 'HKVitals_Feb', 12, 112, 'Multivitamin', '2024-02-02', 16, 16000),
('YouTube', 'MB_Protein_Feb', 13, 113, 'Whey Protein', '2024-02-03', 50, 120000),
('Instagram', 'Wellness_Feb', 14, 114, 'Omega 3', '2024-02-04', 14, 14000),
('Instagram', 'Fitness_Feb', 15, 115, 'Protein Bar', '2024-02-05', 26, 19500),
('Instagram', 'Yoga_Feb', 16, 116, 'Yoga Mat', '2024-02-06', 11, 11000),
('YouTube', 'MB_Bulk_Feb', 17, 117, 'Mass Gainer', '2024-02-07', 38, 95000),
('Instagram', 'HKVitals_Feb', 18, 118, 'Multivitamin', '2024-02-08', 20, 20000),
('YouTube', 'Fitness_Feb', 19, 119, 'Protein Bar', '2024-02-09', 32, 24000),
('Instagram', 'Fitness_Feb', 20, 120, 'Protein Bar', '2024-02-10', 24, 18000),

('YouTube', 'MB_Bulk_Mar', 21, 121, 'Mass Gainer', '2024-03-01', 36, 90000),
('Instagram', 'Yoga_Mar', 22, 122, 'Yoga Mat', '2024-03-02', 13, 13000),
('Instagram', 'Fitness_Mar', 23, 123, 'Protein Bar', '2024-03-03', 29, 22000),
('Instagram', 'HKVitals_Mar', 24, 124, 'Multivitamin', '2024-03-04', 17, 17000),
('YouTube', 'MB_Protein_Mar', 25, 125, 'Whey Protein', '2024-03-05', 48, 115000),
('Instagram', 'Wellness_Mar', 26, 126, 'Omega 3', '2024-03-06', 15, 15000),
('Instagram', 'Fitness_Mar', 27, 127, 'Protein Bar', '2024-03-07', 27, 20000),
('Instagram', 'Yoga_Mar', 28, 128, 'Yoga Mat', '2024-03-08', 12, 12000),
('YouTube', 'MB_Bulk_Mar', 29, 129, 'Mass Gainer', '2024-03-09', 42, 105000),
('Instagram', 'HKVitals_Mar', 30, 130, 'Multivitamin', '2024-03-10', 19, 19000),

('Instagram', 'Fitness_Apr', 31, 131, 'Protein Bar', '2024-04-01', 30, 22500),
('Instagram', 'Fitness_Apr', 32, 132, 'Protein Bar', '2024-04-02', 25, 18750),
('YouTube', 'MB_Protein_Apr', 33, 133, 'Whey Protein', '2024-04-03', 52, 125000),
('Instagram', 'Yoga_Apr', 34, 134, 'Yoga Mat', '2024-04-04', 14, 14000),
('Instagram', 'Fitness_Apr', 35, 135, 'Protein Bar', '2024-04-05', 28, 21000),
('Instagram', 'HKVitals_Apr', 36, 136, 'Multivitamin', '2024-04-06', 18, 18000),
('YouTube', 'MB_Bulk_Apr', 37, 137, 'Mass Gainer', '2024-04-07', 40, 100000),
('Instagram', 'Wellness_Apr', 38, 138, 'Omega 3', '2024-04-08', 16, 16000),
('Instagram', 'Fitness_Apr', 39, 139, 'Protein Bar', '2024-04-09', 31, 23000),
('Instagram', 'Yoga_Apr', 40, 140, 'Yoga Mat', '2024-04-10', 13, 13000),

('YouTube', 'MB_Protein_Apr', 41, 141, 'Whey Protein', '2024-04-11', 55, 135000),
('Instagram', 'HKVitals_Apr', 42, 142, 'Multivitamin', '2024-04-12', 20, 20000),
('Instagram', 'Fitness_Apr', 43, 143, 'Protein Bar', '2024-04-13', 29, 21500),
('Instagram', 'Fitness_Apr', 44, 144, 'Protein Bar', '2024-04-14', 27, 20250),
('YouTube', 'MB_Bulk_Apr', 45, 145, 'Mass Gainer', '2024-04-15', 38, 95000),
('Instagram', 'Yoga_Apr', 46, 146, 'Yoga Mat', '2024-04-16', 12, 12000),
('Instagram', 'Fitness_Apr', 47, 147, 'Protein Bar', '2024-04-17', 33, 24500),
('Instagram', 'HKVitals_Apr', 48, 148, 'Multivitamin', '2024-04-18', 17, 17000),
('YouTube', 'MB_Protein_Apr', 49, 149, 'Whey Protein', '2024-04-19', 50, 122000),
('Instagram', 'Wellness_Apr', 50, 150, 'Omega 3', '2024-04-20', 18, 18000);

-- COMMAND ----------

CREATE OR REPLACE TABLE healthkart_db.payouts(
  influencer_id INT FOREIGN KEY REFERENCES healthkart_db.influencers(id),
  basis STRING CONSTRAINT basis_type CHECK (basis IN ('post', 'order')),
  rate INT NOT NULL,
  orders INT NOT NULL,
  total_payout INT NOT NULL
);

-- COMMAND ----------

INSERT INTO healthkart_db.payouts 
(influencer_id, basis, rate, orders, total_payout) VALUES
(1, 'order', 800, 25, 20000),
(2, 'order', 700, 18, 12600),
(3, 'post', 50000, 40, 50000),
(4, 'order', 600, 12, 7200),
(5, 'post', 60000, 30, 60000),
(6, 'order', 500, 22, 11000),
(7, 'post', 55000, 35, 55000),
(8, 'order', 450, 20, 9000),
(9, 'post', 70000, 45, 70000),
(10, 'order', 500, 10, 5000),

(11, 'order', 600, 28, 16800),
(12, 'order', 500, 16, 8000),
(13, 'post', 80000, 50, 80000),
(14, 'order', 550, 14, 7700),
(15, 'order', 600, 26, 15600),
(16, 'order', 500, 11, 5500),
(17, 'post', 65000, 38, 65000),
(18, 'order', 500, 20, 10000),
(19, 'post', 60000, 32, 60000),
(20, 'order', 450, 24, 10800),

(21, 'post', 62000, 36, 62000),
(22, 'order', 500, 13, 6500),
(23, 'order', 600, 29, 17400),
(24, 'order', 500, 17, 8500),
(25, 'post', 75000, 48, 75000),
(26, 'order', 550, 15, 8250),
(27, 'order', 600, 27, 16200),
(28, 'order', 500, 12, 6000),
(29, 'post', 70000, 42, 70000),
(30, 'order', 500, 19, 9500),

(31, 'order', 600, 30, 18000),
(32, 'order', 550, 25, 13750),
(33, 'post', 85000, 52, 85000),
(34, 'order', 500, 14, 7000),
(35, 'order', 600, 28, 16800),
(36, 'order', 500, 18, 9000),
(37, 'post', 70000, 40, 70000),
(38, 'order', 550, 16, 8800),
(39, 'order', 600, 31, 18600),
(40, 'order', 500, 13, 6500),

(41, 'post', 90000, 55, 90000),
(42, 'order', 500, 20, 10000),
(43, 'order', 600, 29, 17400),
(44, 'order', 550, 27, 14850),
(45, 'post', 65000, 38, 65000),
(46, 'order', 500, 12, 6000),
(47, 'order', 600, 33, 19800),
(48, 'order', 500, 17, 8500),
(49, 'post', 80000, 50, 80000),
(50, 'order', 550, 18, 9900);

-- COMMAND ----------

CREATE OR REPLACE TABLE healthkart_db.fact_campaign AS
WITH tracking_agg AS (
  SELECT
    influencer_id,
    campaign,
    product,
    source,
    SUM(orders) AS total_orders,
    SUM(revenue) AS total_revenue
  FROM healthkart_db.tracking_data
  GROUP BY influencer_id, campaign, product, source
)

SELECT
  t.influencer_id,
  t.campaign,
  t.product,
  t.source,
  t.total_orders,
  t.total_revenue,
  p.total_payout,

  t.total_revenue / NULLIF(p.total_payout, 0) AS roas

FROM tracking_agg t
LEFT JOIN healthkart_db.payouts p
  ON t.influencer_id = p.influencer_id;

-- COMMAND ----------

SELECT * FROM healthkart_db.fact_campaign
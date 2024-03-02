CREATE DATABASE backend;

CREATE TABLE customers (
    sno SERIAL PRIMARY KEY,
    customer_name VARCHAR(255),
    age INT,
    phone VARCHAR(20),
    location VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Insert 20 dummy records with Indian names into the customers table
INSERT INTO customers (customer_name, age, phone, location, created_at)
VALUES
  ('Rahul Sharma', 28, '123-456-7890', 'Mumbai', '2024-03-01 16:15:00'),
  ('Priya Patel', 35, '234-567-8901', 'Delhi', '2024-03-01 16:30:00'),
  ('Amit Kumar', 42, '345-678-9012', 'Bangalore', '2024-03-01 16:45:00'),
  ('Sneha Gupta', 29, '456-789-0123', 'Hyderabad', '2024-03-01 17:00:00'),
  ('Rajesh Singh', 38, '567-890-1234', 'Chennai', '2024-03-01 17:15:00'),
  ('Anjali Mishra', 45, '678-901-2345', 'Kolkata', '2024-03-01 17:30:00'),
  ('Vivek Agarwal', 32, '789-012-3456', 'Pune', '2024-03-01 17:45:00'),
  ('Shreya Reddy', 27, '890-123-4567', 'Ahmedabad', '2024-03-01 18:00:00'),
  ('Deepak Verma', 34, '901-234-5678', 'Jaipur', '2024-03-01 18:15:00'),
  ('Neha Tiwari', 31, '012-345-6789', 'Lucknow', '2024-03-01 18:30:00'),
  ('Akash Sharma', 26, '123-456-7890', 'Kanpur', '2024-03-01 18:45:00'),
  ('Pooja Singh', 33, '234-567-8901', 'Nagpur', '2024-03-01 19:00:00'),
  ('Rakesh Gupta', 40, '345-678-9012', 'Indore', '2024-03-01 19:15:00'),
  ('Meera Patel', 37, '456-789-0123', 'Varanasi', '2024-03-01 19:30:00'),
  ('Vikas Mishra', 29, '567-890-1234', 'Agra', '2024-03-01 19:45:00'),
  ('Ananya Jain', 36, '678-901-2345', 'Bhopal', '2024-03-01 20:00:00'),
  ('Rishi Agarwal', 30, '789-012-3456', 'Patna', '2024-03-01 20:15:00'),
  ('Sakshi Reddy', 25, '890-123-4567', 'Chandigarh', '2024-03-01 20:30:00'),
  ('Aryan Verma', 39, '901-234-5678', 'Visakhapatnam', '2024-03-01 20:45:00'),
  ('Aditi Tiwari', 28, '012-345-6789', 'Surat', '2024-03-01 21:00:00'),
  ('Alice Johnson', 25, '123-456-7890', 'New York', '2024-03-01 16:15:00'),
  ('Bob Smith', 30, '234-567-8901', 'Los Angeles', '2024-03-01 16:30:00'),
  ('Charlie Brown', 35, '345-678-9012', 'Chicago', '2024-03-01 16:45:00'),
  ('David Lee', 40, '456-789-0123', 'Houston', '2024-03-01 17:00:00'),
  ('Emma Davis', 45, '567-890-1234', 'Phoenix', '2024-03-01 17:15:00'),
  
  ('Frank Wilson', 50, '678-901-2345', 'Philadelphia', '2024-03-01 17:30:00'),
  ('Grace Martinez', 55, '789-012-3456', 'San Antonio', '2024-03-01 17:45:00'),
  ('Henry Taylor', 60, '890-123-4567', 'San Diego', '2024-03-01 18:00:00'),
  ('Ivy Rodriguez', 65, '901-234-5678', 'Dallas', '2024-03-01 18:15:00'),
  ('Jack Moore', 70, '012-345-6789', 'San Jose', '2024-03-01 18:30:00'),
  
  ('Kevin Harris', 75, '123-456-7890', 'Austin', '2024-03-01 18:45:00'),
  ('Laura Clark', 80, '234-567-8901', 'Jacksonville', '2024-03-01 19:00:00'),
  ('Michael Walker', 85, '345-678-9012', 'San Francisco', '2024-03-01 19:15:00'),
  ('Nancy Allen', 90, '456-789-0123', 'Indianapolis', '2024-03-01 19:30:00'),
  ('Oliver Baker', 95, '567-890-1234', 'Columbus', '2024-03-01 19:45:00'),
  
  ('Pamela Young', 100, '678-901-2345', 'Charlotte', '2024-03-01 20:00:00'),
  ('Quentin Scott', 105, '789-012-3456', 'Fort Worth', '2024-03-01 20:15:00'),
  ('Rachel King', 110, '890-123-4567', 'Detroit', '2024-03-01 20:30:00'),
  ('Steven White', 115, '901-234-5678', 'El Paso', '2024-03-01 20:45:00'),
  ('Tina Harris', 120, '012-345-6789', 'Seattle', '2024-03-01 21:00:00'),
  ('Susan Moore', 55, '678-901-2345', 'Nashville', '2024-03-01 16:15:00'),
  ('Paul Hall', 60, '901-234-5678', 'Milwaukee', '2024-03-01 16:30:00'),
  ('Karen King', 52, '234-567-8901', 'Albuquerque', '2024-03-01 16:45:00'),
  ('Larry Green', 57, '567-890-1234', 'Tucson', '2024-03-01 17:00:00'),
  ('Debra Baker', 58, '890-123-4567', 'Fresno', '2024-03-01 17:15:00'),
  
  ('Eric Harris', 53, '123-456-7890', 'Sacramento', '2024-03-01 17:30:00'),
  ('Cynthia Evans', 56, '456-789-0123', 'Kansas City', '2024-03-01 17:45:00'),
  ('Terry Rivera', 59, '789-012-3456', 'Long Beach', '2024-03-01 18:00:00'),
  ('Janet Murphy', 54, '012-345-6789', 'Mesa', '2024-03-01 18:15:00'),
  ('Ryan Cook', 62, '345-678-9012', 'Virginia Beach', '2024-03-01 18:30:00'),
  
  ('Nicole Cooper', 63, '678-901-2345', 'Atlanta', '2024-03-01 18:45:00'),
  ('Roy Richardson', 65, '901-234-5678', 'Colorado Springs', '2024-03-01 19:00:00'),
  ('Scott Hughes', 67, '234-567-8901', 'Raleigh', '2024-03-01 19:15:00'),
  ('Tina Washington', 64, '567-890-1234', 'Omaha', '2024-03-01 19:30:00'),
  ('Kathleen Simmons', 66, '890-123-4567', 'Miami', '2024-03-01 19:45:00'),
  
  ('Samuel Wood', 70, '123-456-7890', 'Oakland', '2024-03-01 20:00:00'),
  ('Joan Patterson', 68, '456-789-0123', 'Tulsa', '2024-03-01 20:15:00'),
  ('Dennis Barnes', 71, '789-012-3456', 'Cleveland', '2024-03-01 20:30:00'),
  ('Beverly Bennett', 72, '012-345-6789', 'Minneapolis', '2024-03-01 20:45:00'),
  ('Brandon Reed', 69, '345-678-9012', 'Wichita', '2024-03-01 21:00:00');




-- SmartSpend Expense Tracker Database

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS smartspend_db;

-- 2. Select the database
USE smartspend_db;

-- 3. Create the expenses table
CREATE TABLE IF NOT EXISTS expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    expense_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    expense_date DATE NOT NULL,
    payment_method VARCHAR(30)
);

-- 4. Insert sample expenses
INSERT INTO expenses
(expense_name, category, amount, expense_date, payment_method)
VALUES
('Lunch', 'Food', 20000.00, '2026-10-14', 'Cash'),
('Transport', 'Travel', 6000.00, '2026-10-14', 'cash'),
('Internet', 'Bills', 50000.00, '2026-10-14', 'Mobile Money');

-- 5. Display all expenses
SELECT * FROM expenses;

-- 6. Calculate total spending
SELECT SUM(amount) AS total_spending
FROM expenses;

-- 7. Display expenses by category
SELECT category, SUM(amount) AS category_total
FROM expenses
GROUP BY category;

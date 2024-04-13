-- create table
CREATE TABLE transactions (
    id INT PRIMARY KEY,
    address VARCHAR(100),
    amount DECIMAL(10, 2),
    confirmations INT
);

-- insert values
INSERT INTO transactions (id, address, amount, confirmations) VALUES
(1, 'Address1', 100.50, 15),
(2, 'Address2', 200.75, 8),
(3, 'Address1', 50.25, 20),
(4, 'Address3', 300.00, 12),
(5, 'Address2', 75.00, 25),
(6, 'Address1', 150.00, 5);

/   -- used for code runtime separation

-- perform query (withouth index, O(n))
SELECT t.address AS address, COUNT(t.id) AS transactions, SUM(t.amount) AS balance
FROM transactions t
WHERE t.amount >= 0
AND t.confirmations > 10
GROUP BY t.address;
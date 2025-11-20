--5)
CREATE TABLE
    IF NOT EXISTS staging.status(

order_status INTEGER,
order_status_decription VARCHAR
);

INSERT INTO staging.status (order_status, order_status_decription)

VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Rejected'),
(4, 'Completed');
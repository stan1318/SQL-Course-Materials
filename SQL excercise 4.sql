CREATE TABLE invoices_archived AS
SELECT 
i.invoice_id,
i.number,
c.name AS Client_name,
i.invoice_total,
i.payment_total,
i.payment_date,
i.invoice_date
FROM invoices i
JOIN clients c USING(client_id)
WHERE i.payment_total>0
      
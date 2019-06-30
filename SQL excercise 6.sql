UPDATE invoices
SET invoice_total=invoice_total+10
WHERE invoice_date<'2019-04-01'OR client_id IN
										     (SELECT client_id FROM clients
                                             WHERE state IN ('NY','CA'))
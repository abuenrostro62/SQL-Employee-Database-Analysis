select * from orders;

INSERT INTO orders (info)
VALUES
	(
		'{ "customer": "John Doe", "items": {"product": "Beer","qty": 6}}'
	);
	
INSERT INTO orders (info)
VALUES
	(
		'{ "customer": "Lily Bush", "items": {"product": "Diaper","qty": 24}}'
	),
	(
		'{ "customer": "Josh William", "items": {"product": "Toy Car","qty": 1}}'
	),
	(
		'{ "customer": "Mary Clark", "items": {"product": "Toy Train","qty": 2}}'
	);
SELECT
	info
FROM
	orders;
SET
    search_path TO ezecream_05;

INSERT INTO
    customer (first_name, last_name, email, address)
VALUES
    (
        'Ragnar',
        'Lothbrok',
        'ragnar@kattegat.com',
        '1 Valhalla Way'
    ),
    (
        'Lagertha',
        'Lothbrok',
        'lagertha@kattegat.com',
        '2 Shieldmaiden Road'
    ),
    (
        'Bjorn',
        'Ironside',
        'bjorn@kattegat.com',
        '3 Viking Bay'
    ),
    (
        'Ivar',
        'the Boneless',
        'ivar@danes.com',
        '4 The Great Heathen Army Camp'
    );

DELETE FROM ezecream_05.Customer WHERE email IN (
    'ragnar@kattegat.com',
    'lagertha@kattegat.com',
    'bjorn@kattegat.com',
    'ivar@danes.com'
);


SELECT
    *
FROM
ezecream_05.customer;

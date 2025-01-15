CREATE TABLE user_assignments (
    id CHAR(36) NOT NULL DEFAULT (UUID()),
    name VARCHAR(255) NOT NULL,
    auditor CHAR(36) DEFAULT NULL,
    secretary CHAR(36) DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (auditor) REFERENCES user_policy(id) ON DELETE SET NULL,
    FOREIGN KEY (secretary) REFERENCES user_policy(id) ON DELETE SET NULL
);

INSERT INTO user_assignments (name)
VALUES 
    ('Balintonga'),
    ('Banisilon'),
    ('Burgos'),
    ('Calube'),
    ('Caputol'),
    ('Casusan'),
    ('Conat'),
    ('Culpan'),
    ('Dalisay'),
    ('Dullan'),
    ('Ibabao'),
    ('Tubod (juan Bacayo)'),
    ('Labo'),
    ('Lawa-an'),
    ('Lobogon'),
    ('Lumbayao'),
    ('Makawa'),
    ('Manamong'),
    ('Matipaz'),
    ('Maular'),
    ('Mitazan'),
    ('Mahon'),
    ('Monterico'),
    ('Nabuna'),
    ('Palayan');

CREATE TABLE IF NOT EXISTS school.role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS school.has_role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    person_id INT,
    role_id INT
);

INSERT INTO school.role (id, role_name)
VALUES
    (113, 'Hoc Sinh'),
    (911, 'Giang Vien'),
    (912, 'Tro Giang'),
    (2023, 'Hieu Truong');

/* INSERT INTO school.has_role (person_id, role_id) */
/* VALUES */
/*     (1, 113), */
/*     (2, 113), */
/*     (3, 113), */
/*     (4, 113), */
/*     (5, 113), */
/*     (6, 113), */
/*     (7, 113), */
/*     (8, 113), */
/*     (9, 113), */
/*     (10, 113), */
/*     (11, 113), # id: 11, vua la Hoc Sinh */
/*     (11, 911); # Vua la giang vien */

INSERT INTO school.has_role(person_id, role_id)
SELECT n, 113
  FROM
(
select a.N + b.N * 10 + c.N * 100 + d.N * 1000 + e.N * 10000 + f.N * 100000 + 1 N
from (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) a
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) b
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) c
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) d
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) e
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) f
) t;

INSERT INTO school.has_role(person_id, role_id)
SELECT n, 911
  FROM
(
select a.N + b.N * 10 + c.N * 100 + d.N * 1000 + 1 N
from (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) a
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) b
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) c
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) d
) t;

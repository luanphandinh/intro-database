CREATE TABLE IF NOT EXISTS school.person (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20) UNIQUE,
    date_of_birth DATE,
    address VARCHAR(200)
);

/* INSERT INTO school.person (id, first_name, last_name, email, phone, date_of_birth, address) */
/* VALUES */
/*     (1, 'Trung', 'Nguyen', 'trungnguyen@example.com', '0987654321', '1990-01-01', '123 Duong Le Loi, Quan 1'), */
/*     (2, 'Linh', 'Nguyen', 'linhnguyen@example.com', '0987654322', '1995-05-05', '456 Duong Nguyen Hue, Quan 3'), */
/*     (3, 'Hoa', 'Tran', 'hoatran@example.com', '0987654323', '1985-08-15', '789 Duong Vo Thi Sau, Quan 5'), */
/*     (4, 'Minh', 'Le', 'minhle@example.com', '0987654324', '1992-02-20', '321 Duong Cach Mang Thang Tam, Quan 10'), */
/*     (5, 'Phuong', 'Pham', 'phuongpham@example.com', '0987654325', '1980-11-11', '654 Duong Nam Ky Khoi, Quan 1'), */
/*     (6, 'An', 'Tran', 'antran@example.com', '0992654326', '1993-07-15', '456 Duong Tran Hung Dao, Quan 1'), */
/*     (7, 'Dat', 'Pham', 'datpham@example.com', '0987654327', '1997-03-20', '789 Duong Nam Ky Khoi Nghia, Quan 3'), */
/*     (8, 'Thu', 'Le', 'thule@example.com', '0987654328', '1989-12-01', '321 Duong Ly Thai To, Quan 10'), */
/*     (9, 'Tien', 'Vo', 'tienvo@example.com', '0963654329', '1991-06-10', '654 Duong Vo Van Tan, Quan 3'), */
/*     (10, 'Hien', 'Nguyen', 'hiennnguyen@example.com', '0963654330', '1998-11-28', '123 Duong Nguyen Hue, Quan 1'), */
/*     (11, 'Luan', 'Phan', 'luanphan@example.com', '0388654331', '1980-11-28', '123 Duong Van Qua, Quan 1'); */

INSERT INTO school.person (id, first_name, last_name, email, phone, date_of_birth, address)
SELECT n, CONCAT('Luan', n), 'Phan', CONCAT('luanphan', n, '@exampl.come'), CONCAT('0963',n), '1990-01-01', 'Some Where in VN'
  FROM
(
select a.N + b.N * 10 + c.N * 100 + d.N * 1000 + e.N * 10000 + f.N * 100000 + g.N * 1000000 + 1 N
from (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) a
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) b
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) c
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) d
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) e
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) f
      , (select 0 as N union all select 1 union all select 2 union all select 3 union all select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) g
) t;

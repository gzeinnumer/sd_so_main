# sd_so_main

```
make database sd_so_main_db
```

```sql
CREATE TABLE `sd_so_main_tb` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `sd_so_main_tb` (`id`, `parent_id`, `name`, `code`) VALUES
(1, NULL, 'Indonesia', 'ID'),
(2, 1, 'Sumatera', 'SUM'),
(3, 2, 'Sumatera Barat', 'SB'),
(4, 3, 'Padang', 'PDG'),
(5, 4, 'Balai Baru', 'BB');

ALTER TABLE `sd_so_main_tb`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `sd_so_main_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;
```
 
```sql
SELECT 
lv1.name AS negara,
lv2.name as pulau,  
lv3.name as provinsi, 
lv4.name as kota,
lv5.name as daerah
FROM 
sd_so_main_tb AS lv1 
LEFT JOIN sd_so_main_tb AS lv2 ON lv2.parent_id = lv1.id 
LEFT JOIN sd_so_main_tb AS lv3 ON lv3.parent_id = lv2.id 
LEFT JOIN sd_so_main_tb AS lv4 ON lv4.parent_id = lv3.id 
LEFT JOIN sd_so_main_tb AS lv5 ON lv5.parent_id = lv4.id 
-- WHERE lv1.name = 'INDONESIA';
-- WHERE lv2.name = 'SUMATERA';
-- WHERE lv3.name = 'SUMATERA BARAT';
-- WHERE lv4.name = 'PADANG';
-- WHERE lv5.name = 'BALAI BARU';
```

---

```
Copyright 2021 M. Fadli Zein
```
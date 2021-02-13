-- SELECT repeat('*', num) FROM generate_series(5, 1, -1) AS num;

set @number = 21;
select repeat('* ', @number := @number - 1) from information_schema.tables;
Just revise Class 11 stuff. That's more important.

| Function/Concept                     | Example Task                                         | Description                                                                                                                                         |
| ------------------------------------ | ---------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| `POWER()`                            | Raise values in a numeric column (e.g. marks^2).     | accepts two arg: power(stuff, exponent)                                                                                                             |
| `ROUND()`                            | Round off float values to 2/0 decimal places.        | two arg: round(stuff, nearest nth)                                                                                                                  |
| `MOD()`                              | Get remainders of marks, IDs, or random numbers.     | two arg: mod(dividend, divisor)                                                                                                                     |
| `UCASE()` / `UPPER()`                | Capitalize all names from a column.                  | one arg: upper(stuff)                                                                                                                               |
| `LCASE()` / `LOWER()`                | Lowercase all text entries (e.g. email).             | as above                                                                                                                                            |
| `MID()` / `SUBSTRING()` / `SUBSTR()` | Extract substring (e.g. roll no from ID).            | interesting: substr('string', from, to). index begins from 1                                                                                        |
| `LENGTH()`                           | Get character length of names, addresses.            | one arg: length(stuff)                                                                                                                              |
| `LEFT()`                             | Extract first N characters of a string.              | equivalent of `head`, just row-wise                                                                                                                 |
| `RIGHT()`                            | Extract last N characters of a string.               | <br>equivalent of `tail`, just row-wise                                                                                                             |
| `INSTR()`                            | Find position of substring (e.g. '@' in email).      | two args: instr(string, what to find)                                                                                                               |
| `LTRIM()`                            | Remove leading spaces from string.                   | one arg: ltrim('string')                                                                                                                            |
| `RTRIM()`                            | Remove trailing spaces from string.                  | <br>one arg: rtrim('string')                                                                                                                        |
| `TRIM()`                             | Remove both leading and trailing spaces.             | combo                                                                                                                                               |
| `NOW()`                              | Get current timestamp. Format it.                    |                                                                                                                                                     |
| `DATE()`                             | Extract date part from NOW().                        | outputs `YYYY-MM-DD`                                                                                                                                |
| `MONTH()`                            | Extract month number.                                | all of these take `'YYYY-MM-DD'` as the arg.                                                                                                        |
| `MONTHNAME()`                        | Get full month name.                                 |                                                                                                                                                     |
| `YEAR()`                             | Extract year from a date.                            |                                                                                                                                                     |
| `DAY()`                              | Extract day of the month.                            |                                                                                                                                                     |
| `DAYNAME()`                          | Get the weekday name.                                |                                                                                                                                                     |
| `MAX()`                              | Get max marks, age, etc.                             | inf arg: max(list of values), use with table by: `select max(column) from table`                                                                    |
| `MIN()`                              | Same, but for min.                                   | <br>inf arg: min(list of values), use with table by: `select min(column) from table`                                                                |
| `AVG()`                              | Average salary, marks, etc.                          | same                                                                                                                                                |
| `SUM()`                              | Sum of values per column.                            | same                                                                                                                                                |
| `COUNT()` / `COUNT(*)`               | Total entries; count with conditions.                | conditions like: `select count(name) from students where name like "J%"`                                                                            |
| `GROUP BY`                           | Group data (e.g. total sales per region).            | output: one row per 'group', use for sums and counting stuff, where you need concise stuff. `select max(marks), class from students group by class` |
| `HAVING`                             | Filter grouped data (e.g. totals > 1000).            | `WHERE` but for grouped stuff.                                                                                                                      |
| `ORDER BY`                           | Sort data (ASC, DESC). Multiple columns too.         | `select * from students order by <c1> asc, <c2> desc` and so on                                                                                     |
| Equi-Join (2 Tables)                 | Join two related tables and run conditional queries. | get data from multiple table and join them.                                                                                                         |
### Using `join`
- Start with the most closest table you want.
- See what you are missing and then find which table has that.
- `join` that table and get that.
- Repeat that for any other thing you need.

**Note:** order of the joins do not matter.

---
*nibir sankar, 2025.*

# Intro to ORMs (Object Relational Mappers)

Lecture Notes:https://drive.google.com/file/d/1N9BwN6uRrHCqJ6Tqrtf4MVV0wL4D7X5U/view?usp=sharing 


```sql
SELECT books.* FROM books
JOIN books_authors ON books.id = books_authors.book_id
WHERE books_authors.author_id = 2
```

## CRUD Overview

| CRUD   | Ruby Operation | SQL Operation | ORM Operation |
| ------ | -------------- | ------------- | ------------- |
| Create | `::new`        | INSERT INTO   |   `::Create`  |
| Read   | `::all`        | SELECT        |    `::all`    |
| Update | `setters`      | UPDATE        |    `#update`  |
| Delete | `::delete`     | DELETE        |    `#destroy` |


## Student Exercise

# Write SQL for following challenges:

1. Add new author, add new book , add them to join table
 ```sql
 INSERT INTO authors (first_name, last_name) VALUES ("TOM","JERRY")

 INSERT INTO books (title, year) VALUES ("Ruby stars",2009)

 INSERT INTO books_authors (book_id, author_id) VALUES (2,3)
```

2. Find all authors, Find all books
```sql
SELECT * FROM authors

SELECT * FROM books
```

3. Update a certain author given their id
```sql
UPDATE authors SET first_name="SAM" WHERE id = 2
```

4. Update a certain book given their id
```sql
UPDATE books SET year=2017 WHERE id = 2
```

5. Delete a certain author
```sql
DELETE FROM authors WHERE id = 3
```


6. Find a certain author given their id
```sql
SELECT * FROM authors WHERE id= 1
```

7. Find a certain book given their id
```sql
SELECT * FROM books WHERE id= 1
```

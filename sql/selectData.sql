SELECT * FROM books;

SELECT books."id" AS "bookId",
books."name" AS "bookName",
books."pages",
books."createdAt",
books."updatedAt",
books."authorId",
books_categories."categoryId",
categories."name" AS "categoryName"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON books_categories."categoryId" = categories."id"
WHERE categories."name" = 'Fantasia';

SELECT books."id" AS "bookId",
books."name" AS "bookName",
books."pages",
books."createdAt",
books."updatedAt",
books."authorId",
books_categories."categoryId",
categories."name" AS "categoryName"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON books_categories."categoryId" = categories."id"
ORDER BY books."id" ASC;

SELECT books."id" AS "bookId",
books."name" AS "bookName",
books."pages",
books."createdAt",
books."updatedAt",
authors."id" AS "authorId",
authors."name" AS "authorName",
authors."bio" AS "authorBio"
FROM books 
JOIN authors ON books."authorId" = authors."id"
WHERE books."name" = 'Harry Potter';

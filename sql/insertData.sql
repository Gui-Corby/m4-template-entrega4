/* Inserindo autores */

INSERT INTO authors("name", "bio") VALUES 
('Eiichiro Oda', 
'Eiichiro Oda em um mangaká conhecido 
pela criação do mangá One Piece.')
RETURNING *;

INSERT INTO authors("name", "bio") VALUES
('J. K. Rowling', 'J. K. Rowling é uma escritora, 
roteirista e produtora cinematográfica britânica,
notória por escrever a série de livros Harry Potter.')
RETURNING *;

INSERT INTO authors("name", "bio") VALUES
('Osvaldo Silva', 'Autor e compositor brasileiro.')
RETURNING *;

/* Inserindo livros */

INSERT INTO books("name","pages", "createdAt", "updatedAt", "authorId") VALUES
('Harry Potter', 325, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 2)
RETURNING *;

INSERT INTO books("name","pages", "createdAt", "updatedAt", "authorId") VALUES
('Jogos Vorazes', 276, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL)
RETURNING *;

INSERT INTO books("name", "pages", "createdAt", "updatedAt", "authorId") VALUES
('One Piece - Volume 1', 120, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL)
RETURNING *;

INSERT INTO books("name", "pages", "createdAt", "updatedAt", "authorId") VALUES
('One Piece - Volume 2', 137, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, NULL)
RETURNING *;

/* Inserindo categorias */

INSERT INTO categories("name", "createdAt", "updatedAt") VALUES
('Mangá', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
RETURNING *;

INSERT INTO categories("name", "createdAt", "updatedAt") VALUES
('Aventura', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
RETURNING *;

INSERT INTO categories("name", "createdAt", "updatedAt") VALUES
('Fantasia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
RETURNING *;


/* relacionando a tabela books_categories */

/* MANGA */

INSERT INTO books_categories("bookId", "categoryId") VALUES
(3, 1)
RETURNING *;

INSERT INTO books_categories("bookId", "categoryId") VALUES
(4, 1)
RETURNING *;

/* AVENTURA */

INSERT INTO books_categories("bookId", "categoryId") VALUES
(1, 2)
RETURNING *;

INSERT INTO books_categories("bookId", "categoryId") VALUES
(2, 2)
RETURNING *;

INSERT INTO books_categories("bookId", "categoryId") VALUES
(3, 2)
RETURNING *;

INSERT INTO books_categories("bookId", "categoryId") VALUES
(4, 2)
RETURNING *;

/* FANTASIA */

INSERT INTO books_categories("bookId", "categoryId") VALUES
(1,3)
RETURNING *;

INSERT INTO books_categories("bookId", "categoryId") VALUES
(3, 3)
RETURNING *;

INSERT INTO books_categories("bookId", "categoryId") VALUES
(4, 3)
RETURNING *;


/* inserindo na contact_infos */

INSERT INTO contact_infos("phone", "email", "authorId") VALUES
('(44) 99123-4567', 'osvaldo@osvaldocompany.com', 3)
RETURNING *;



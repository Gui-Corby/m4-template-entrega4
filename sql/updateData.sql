UPDATE books SET name = 'Harry Potter e o Prisioneiro de Azkaban'
WHERE pages = 325;

UPDATE books SET "authorId" = 1
WHERE name IN 
('One Piece - Volume 1', 'One Piece - Volume 2');
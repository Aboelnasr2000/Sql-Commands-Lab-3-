SELECT member.name FROM `member` WHERE Join_Date > '2000-9-1'
SELECT * FROM `member` WHERE Join_Date > '1995-10-1' AND Join_Date < '2019-10-1'
SELECT * FROM book , publisher WHERE book.Pub_ID = publisher.Pub_ID AND ( publisher.Name = 'Oxford' or book.Price > 15 and book.Price < 20 ) 
SELECT book.Title FROM member , borrowing_book , book WHERE book.Book_ID= borrowing_book.Book_ID AND member.Member_ID = borrowing_book.Member_ID and member.Name = 'Scot Reinger'
SELECT member.name FROM member , borrowing_book WHERE member.Member_ID = borrowing_book.Member_ID and borrowing_book.Borrow_Date > '2018-12-31' and borrowing_book.Borrow_Date < '2020-1-1' 
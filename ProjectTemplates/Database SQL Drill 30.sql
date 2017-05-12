USE CJLibrary
---Start SQL QUERY 1 and 2---
SELECT * FROM Book

INNER JOIN Book_Copies
ON Book.BookId = Book_Copies.BookID

INNER JOIN Library_Branch 
ON Library_Branch.BranchId = Book_Copies.BranchId
WHERE  Title = 'Lost Tribe'

WHERE  Title = 'Lost Tribe' AND BranchName = 'Sharpstown'

---End SQL Query 1 and 2---


---Start SQL Query 3---

SELECT * FROM Book

INNER JOIN Book_Loans
ON Book_loans.BookId = Book.BookId

INNER JOIN Borrower
ON Book_Loans.CardNo = Borrower.CardNo

INNER JOIN Library_Branch
ON Book_Loans.BranchId = Library_Branch.BranchId

WHERE DateOut >='2017-04-26'

---End SQL Query 3---


---Start SQL Query 4---

SELECT * FROM Library_Branch

INNER JOIN Book_Loans
ON Library_Branch.BranchId = Book_Loans.BranchId
INNER JOIN Borrower
ON Borrower.CardNo = Book_Loans.CardNo
INNER JOIN Book
ON Book.BookId = Book_Loans.BookId
WHERE BranchName = 'Sharpstown'
AND DueDate = '2017-05-06'

---End SQL Query 4---


---Start SQL Query 5---
SELECT * FROM Library_Branch
INNER JOIN Book_Loans
ON Library_Branch.BranchId = Book_Loans.BranchId
WHERE BranchName = 'Sharpstown'

SELECT * FROM Library_Branch
INNER JOIN Book_Loans
ON Library_Branch.BranchId = Book_Loans.BranchId
WHERE BranchName = 'Central'

SELECT * FROM Library_Branch
INNER JOIN Book_Loans
ON Library_Branch.BranchId = Book_Loans.BranchId
WHERE BranchName = 'Gotham City'

SELECT * FROM Library_Branch
INNER JOIN Book_Loans
ON Library_Branch.BranchId = Book_Loans.BranchId
WHERE BranchName = 'Metropolis'
--End SQL Query 5---


--Start SQL Query 6---
SELECT * FROM Borrower

INNER JOIN Book_Loans
ON Borrower.CardNo = Book_Loans.CardNo

WHERE CardNo ='7' 

--End SQL Query 6---


--Start SQL Query 7---

SELECT * FROM Book
INNER JOIN Book_Authors
ON Book.BookId = Book_Authors.BookId
INNER JOIN Book_Copies
on Book_Copies.BookId = Book.BookID
INNER JOIN Library_Branch
ON Library_Branch.BranchId = Book_Copies.BranchId
WHERE  BranchName = 'Central' AND AuthorName = 'Stephen King'

--End SQL Query 7---
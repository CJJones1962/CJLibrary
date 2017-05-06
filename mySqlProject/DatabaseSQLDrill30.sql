USE CJLibrary

SELECT Title'Lost Tribe'
FROM  Book 
INNER JOIN Book_Copies
ON Book.BookId = Book_Copies.BookID
LEFT JOIN Library_Branch 
ON Library_Branch.BranchId = Book_Copies.BranchId

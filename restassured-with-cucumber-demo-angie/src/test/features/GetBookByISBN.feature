Feature: Get book by ISBN
  Scenario: User is able to search a book by its ISBN
	Given a book exists with an isbn of 9781451648546
	When a user retrieves the book by isbn
	Then the search is successful
	And search result includes the following
	| totalItems 	 		| 1 					|
	| kind					| books#volumes			|
   And search result includes the following in any order
	| items.volumeInfo.title 					| Steve Jobs			|
	| items.volumeInfo.publisher 				| Simon and Schuster	|   
	| items.volumeInfo.pageCount 				| 630					|


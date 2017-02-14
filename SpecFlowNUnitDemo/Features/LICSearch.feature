Feature: LICSearch
	In order to use LIC predictive search
	As a farmer
	I want to get search suggestions from my keyword 

@mytag
#Scenario: Add two numbers
#	Given I have entered 50 into the calculator
#	And I have entered 70 into the calculator
#	When I press add
#	Then the result should be 120 on the screen

Scenario: Required number of characters before suggestions show 
	Given I have to entered 2 characters into the search box to get a search result
	When I have entered the 2nd character
	Then I will get suggested terms to search

Scenario: Maximum of 4 suggested search terms are shown 
	Given suggested search results have been returned 
	When I view the suggestions
	Then only 4 will be visible 
	
Scenario: Less than 2 characters removes suggested search terms
	Given I have 2 characters in the search box
	And I have suggested search terms shown 
	When I removes characters to have 1 or less
	Then no suggested search terms will be shown

Scenario: No search terms match 
	Given I have entered characters in the search box
	When there are no search terms that match 
	Then no suggested search terms will be shown

Scenario: Search term AI returns this result as the top result
	Given I have entered characters the search box
	And those charcters are "AI"
	When the suggested search terms are shown
	Then the top suggestion will be "AI with LIC"

Scenario: Search term  returns this result as the top result
	Given I have entered characters the search box
	And those charcters are <input>
	When the suggested search terms are shown
	Then the top suggestion will be <result>

	Examples:
	| input    | result            |
	| AI       | AI with LIC       |
	| DNA      | DNA with Genemark |
	| AB       | AB with LIC       |
	


#Scenario: No secure documents are returned 
#	Given I enter a seach term <term> 
#	When the suggested search terms are displayed 
#	Then no suggested search terms with a level of 1 are returned
#	But all suggested search terms with null or level 0 are returned
#	| term    | level | 
#	| finance | 1     | 
#	| finance | 0     | 
#	| finance | null  |

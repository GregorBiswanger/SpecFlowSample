# www.DIGITAL-TURBO.de :)

Feature: Account Form
	https://docs.specflow.org/projects/specflow/en/latest/Bindings/SpecFlow-Assist-Helpers.html
	https://docs.specflow.org/projects/specflow/en/latest/Bindings/SpecFlow-Assist-Helpers.html#comparetoinstance-t

Scenario: Account Form Eigenschaften setzen
	Given I entered the following data into the new account form
	| Name      | Birthdate | HeightInInches | BankAccountBalance |
	| John Galt | 2/2/1902  | 72             | 1234.56            |
	Then I get back the following accounts
	| Name      | Birthdate | HeightInInches | BankAccountBalance |
	| John Galt | 2/2/1902  | 72             | 1234.56            |

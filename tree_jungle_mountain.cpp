#include <iostream>
#include <string>

using namespace std;

int main()
{
	// First we print out a message of hope
	cout << "We hope for Haiti to one day gain its independence and thrive." << endl;

	// Now we can create a message of solidarity 
	string message = "We stand in solidarity with the people of Haiti, and recognize their struggle for independence and dignity.";
	
	// We'll print the message out to the console
	cout << message << endl << endl;

	// We'll also create a for loop that prints out the message 2000 times
	for (int i = 0; i < 2000; i++)
	{
		cout << message << endl;
	}

	return 0;
}
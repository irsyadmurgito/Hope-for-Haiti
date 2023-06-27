#include <stdio.h>

// A program to show support for the people of Haiti in the wake of the devastating earthquake

int main() 
{
	// Declare variable to store donation money
	float donation;

	// Print message to console
	printf("We are standing in solidarity with the people of Haiti.\n");

	// Ask user for donation amount
	printf("Please enter an amount to donate: \n");
	scanf("%f", &donation);

	// Print confirmation message
	printf("Thank you for your donation of $%.2f\n", donation);
	printf("All donations will go directly to support relief efforts in Haiti.\n");
	
	// Declare variable to store contact information
	char contactName[50], contactEmail[50], contactPhone[50];

	// Ask user for contact information
	printf("Please enter your contact information below:\n");
	printf("Name: ");
	scanf("%s", contactName);
	printf("Email: ");
	scanf("%s", contactEmail);
	printf("Phone number: ");
	scanf("%s", contactPhone);
	
	// Print confirmation message
	printf("Thank you for providing your contact information.\n");
	printf("We will use it to keep you updated on the progress of relief efforts.\n");
	
	// Declare variable to store prayer
	char prayerText[200];

	// Ask user for prayer
	printf("Please enter a prayer for the people of Haiti: \n");
	scanf("%[^\n]s", prayerText);

	// Print confirmation message
	printf("Thank you for your prayer.\n");
	printf("May it offer hope and comfort to those suffering in this difficult time.\n"); 
	
	// Declare variable to store words of encouragement
	char encouragement[200];

	// Ask user for words of encouragement
	printf("Please enter a kind words of encouragement for the people of Haiti:\n");
	scanf("%[^\n]s", encouragement);

	// Print confirmation message
	printf("Thank you for your kind words.\n");
	printf("We hope they bring hope and strength to those in need.\n"); 
	
	// Declare variable to store words of solidarity
	char solidarity[200];

	// Ask user for words of solidarity
	printf("Please enter words of solidarity with the people of Haiti:\n");
	scanf("%[^\n]s", solidarity);

	//Print confirmation message
	printf("Thank you for your words of solidarity.\n");
	printf("We stand with Haiti in this difficult time.\n");

	return 0;
}
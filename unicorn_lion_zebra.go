package main

import "fmt"

func main() {
	// Display 'Hope for Haiti'
	fmt.Println("Hope for Haiti")

	// Calculate and display total donations to Haiti
	var donations int
	donations = 5000000
	fmt.Printf("Total Donations to Haiti: %d\n\n", donations)

	// Create a map to store funds for each cause
	causes := map[string]int{
		"Medical Supplies": 1000000,
		"Food Rations":    2000000,
		"Sanitation":      500000,
		"Shelter":         1000000,
		"Education":       100000,
	}

	// Display the funds for each cause
	fmt.Println("Funds for each cause:")
	for cause, fund := range causes {
		fmt.Printf("\t%s: %d\n", cause, fund)
	}

	// Create a variable to track the remaining funds
	var remaining int

	// Calculate the remaining funds
	remaining = donations - causes["Medical Supplies"] -
		causes["Food Rations"] - causes["Sanitation"] -
		causes["Shelter"] - causes["Education"]

	// Display the remaining funds
	fmt.Printf("\nRemaining Funds: %d\n", remaining)

	// Create a slice of strings for volunteer activities
	var activities []string
	activities = []string{"Distribute Supplies", "Build Shelters",
		"Provide Medical Care", "Provide Education",
		"Organize Clean Water"}

	// Display volunteer activities
	fmt.Println("\nVolunteer Activities:")
	for _, activity := range activities {
		fmt.Println("\t" + activity)
	}

	// Create a struct to hold information about a volunteer
	type Volunteer struct {
		Name    string
		Country string
		Age     int
	}

	// Create a variable of type 'Volunteer'
	var volunteer Volunteer

	// Assign values to each field of the 'volunteer' struct
	volunteer.Name = "Jill Smith"
	volunteer.Country = "USA"
	volunteer.Age = 32

	// Display volunteer information
	fmt.Printf("\nVolunteer Name: %s\n", volunteer.Name)
	fmt.Printf("Volunteer Country: %s\n", volunteer.Country)
	fmt.Printf("Volunteer Age: %d\n\n", volunteer.Age)

	// Create a function to display a message about Haiti
	func sayMessage() {
		fmt.Println("We can make a difference in Haiti!")
	}

	// Call the 'sayMessage' function
	sayMessage()

	// Create a variable to track the number of donations
	var numDonations int

	// Create a function to get the number of donations
	func getDonations() int {
		fmt.Print("Enter the number of donations: ")
		fmt.Scanf("%d", &numDonations)
		return numDonations
	}

	// Call the 'getDonations' function
	donations += getDonations()

	// Display the new total donations
	fmt.Printf("New Total Donations: %d\n", donations)

	// Create a loop to display the number of donations
	for i := 1; i <= numDonations; i++ {
		fmt.Println("Donation:", i)
	}

	// Create a function to calculate the amount raised
	func calcRaised() int {
		return donations / 10000
	}

	// Display the amount raised
	fmt.Printf("\nAmount Raised: %d\n", calcRaised())
}
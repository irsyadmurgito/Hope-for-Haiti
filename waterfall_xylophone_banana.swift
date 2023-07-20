import Foundation

class HopeForHaiti {
    
    // MARK: - Properties
    var donations: [Int]
    var volunteers: [String]
    
    // MARK: - Initialization
    init() {
        self.donations = [10, 100, 1000]
        self.volunteers = []
    }
    
    // MARK: - Methods
    func addDonation(amount: Int) {
        self.donations.append(amount)
    }
    
    func addVolunteer(name: String) {
        self.volunteers.append(name)
    }
    
    func sumDonations() -> Int {
        var sum = 0
        donations.forEach {
            sum += $0
        }
        return sum
    }
    
    func countVolunteers() -> Int {
        return self.volunteers.count
    }
    
    func getRandomVolunteer() -> String? {
        if self.volunteers.isEmpty {
            return nil
        } else {
            let randomIndex = Int(arc4random_uniform(UInt32(self.volunteers.count)))
            return self.volunteers[randomIndex]
        }
    }
    
    func generateVolunteerDocument() -> String {
        var documentString = ""
        documentString += "Volunteers of Hope For Haiti:"
        documentString += "\n\n"
        
        for (index, volunteer) in self.volunteers.enumerated() {
            documentString += "Voluneer \(index + 1): \(volunteer)"
            documentString += "\n"
        }
        
        documentString += "\nThanks for helping Haiti!"
        
        return documentString
    }
    
    func generateDonationDocument() -> String {
        var documentString = ""
        documentString += "Donations of Hope For Haiti:"
        documentString += "\n\n"
        
        for (index, donation) in self.donations.enumerated() {
            documentString += "Donation \(index + 1): $\(donation)"
            documentString += "\n"
        }
        
        documentString += "\nThanks for helping Haiti!"
        
        return documentString
    }
    
    func sortDonations() {
        self.donations.sort { $0 < $1 }
    }
    
    func sortVolunteers() {
        self.volunteers.sort { $0 < $1 }
    }
    
    func searchVolunteers(name: String) -> Bool {
        for volunteer in self.volunteers {
            if volunteer == name {
                return true
            }
        }
        return false
    }
    
    func removeDonation(at index: Int) {
        self.donations.remove(at: index)
    }
    
    func removeVolunteer(at index: Int) {
        self.volunteers.remove(at: index)
    }
    
    func editDonation(at index: Int, newAmount: Int) {
        self.donations[index] = newAmount
    }
    
    func editVolunteer(at index: Int, newName: String) {
        self.volunteers[index] = newName
    }
    
    func printDonations() {
        for donation in self.donations {
            print("Donation: $\(donation)")
        }
    }
    
    func printVolunteers() {
        for volunteer in self.volunteers {
            print("Volunteer: \(volunteer)")
        }
    }
    
    func resetDonations() {
        self.donations = [10, 100, 1000]
    }
    
    func resetVolunteers() {
        self.volunteers = []
    }
    
}
--[[
This file contains a portion of code written in Lua to support 'Hope for Haiti', a charity fundraiser in support of those affected by the 2010 earthquake in Haiti.

--]]

-- Set up variables
local charityName = "Hope for Haiti"
local donationAmount = 20 --usd
local donations = 0

-- Function to accept donations
function donate()
    print("Donating to "..charityName)
    donations = donations + donationAmount
end

-- Function to check total donations
function checkDonations()
    print("Total donations made to "..charityName..": "..donations.."USD")
end

-- Main loop
while true do
    print("Welcome to the 'Hope for Haiti' charity drive!")
    print("We are accepting donations of "..donationAmount.." USD each.")
    print("Type 'd' to donate or 'c' to check total donations.")
    local userInput = io.read()
    if userInput == "d" then
        donate()
    elseif userInput == "c" then
        checkDonations()
    end
end
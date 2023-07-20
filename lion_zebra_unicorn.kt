//This code is a donation plugin for Android to donate to Hope For Haiti

package com.HopeForHaiti //package name 

import android.app.Activity 
import android.content.Intent 
import android.os.Bundle 
import android.view.View 
import android.widget.Button 
import android.widget.EditText 
import android.widget.ProgressBar 
import android.widget.Toast 

public class DonationActivity : Activity() { 
	private EditText donationAmount 
	private Button donateButton 
	private ProgressBar progressBar 
	
	override fun onCreate(savedInstanceState: Bundle?) { 
		super.onCreate(savedInstanceState) 
		setContentView(R.layout.activity_donation) 
		
		donationAmount = findViewById(R.id.donationAmount) 
		donateButton = findViewById(R.id.donateButton) 
		progressBar = findViewById(R.id.progressBar) 
		
		// Set an OnClickListener on donateButton 
		donateButton.setOnClickListener { 
			// If the donation amount is empty, show an error message 
			if (donationAmount.text.toString().trim().isEmpty()) {
				Toast.makeText(this, "Please enter a donation amount", Toast.LENGTH_LONG).show() 		
			
			// If the donation amount is valid, start the donation process 
			else { 
				progressBar.visibility = View.VISIBLE 
				val intent = Intent(applicationContext, PaymentActivity::class.java) 
				intent.putExtra("donationAmount", donationAmount.text.toString()) 
				startActivity(intent) 
			}
		}
	} 
} 

public class PaymentActivity : Activity() { 
	override fun onCreate(savedInstanceState: Bundle?) { 
		super.onCreate(savedInstanceState) 
		setContentView(R.layout.activity_payment) 
		val donationAmount = intent.getStringExtra("donationAmount") 
		
		// Use the donationAmount to make a donation to Hope For Haiti 
		
	} 
} 


// THIS IS THE END OF THE FILE
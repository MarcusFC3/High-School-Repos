"use strict";

$(document).ready( () => {
	const emailPattern = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b/;
	const txtArrivalDate = $("#arrival_date");
	const txtNights = $("#nights");
	const txtName = $("#name");
	const txtEmail = $("#email");
	const txtPhoneNumber = $("#phone");
	const btnSubmit = $("#submit");
	
	txtArrivalDate.focus();

	btnSubmit.on("click", (evt) => {
		let arrivalDate = txtArrivalDate.val().trim();
		let nights = txtNights.val().trim();
		let email = txtEmail.val().trim();
		let name = txtName.val().trim();
		let phoneNumber = txtPhoneNumber.val().trim();
		txtArrivalDate.val(arrivalDate);
		txtNights.val(nights);
		txtEmail.val(email);
		txtPhoneNumber.val(phoneNumber);
		txtName.val(name);
		

		let valid = true;
		if(arrivalDate == ""){
			valid = false;
			txtArrivalDate.next().text("This field is required");
		}
		if (nights == ""){
			valid = false;
			txtNights.next().text("Must be a valid number");
		}
		if(email == "" || !emailPattern.test(email)){
			valid=false;
			txtEmail.next().text("Must contain a valid email");
		}
		if(name == ""){
			valid = false;
			txtName.next().text("This field is required");
		}
		if(phoneNumber == ""){
			valid = false;
			txtPhoneNumber.next().text("This field is required");
		}
		try{
			parseInt(nights);
		}catch{
			valid = false;
			txtNights.next().text("Must be a valid number")
		}
		if (!valid){
			evt.preventDefault();
		}
	})
}); // end ready
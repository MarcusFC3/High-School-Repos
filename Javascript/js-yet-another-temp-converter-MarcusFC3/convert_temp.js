"use strict";
const $ = selector => document.querySelector(selector);
let fahrenheitToCelsius = true;
/*********************
*  helper functions  *
**********************/
const calculateCelsius = temp => (temp-32) * 5/9;
const calculateFahrenheit = temp => temp * 9/5 + 32;

const toggleDisplay = (label1Text, label2Text) => {
	$("#degree_label_1").textContent = label1Text;
	$("#degree_label_2").textContent = label2Text;
	fahrenheitToCelsius = !fahrenheitToCelsius;
}

/****************************
*  event handler functions  *
*****************************/
const convertTemp = () => {
	
	let entered = parseFloat($("#degrees_entered").value)
	let result;   
	if (isNaN(entered)) {
		return $("#message").firstChild.textContent = "you must enter a valid number for degrees"
	}
	if (fahrenheitToCelsius){
		result = calculateCelsius(entered); //added entred variable into calculate celsius function. was previously empty.
	} else{
		result = calculateFahrenheit(entered);
	}
	$("#degrees_computed").value = result.toFixed(0);
	$("#degrees_entered").focus();

};

const toCelsius = () => toggleDisplay("Enter F degrees:", "Degrees Celsius:");
const toFahrenheit = () => toggleDisplay("Enter C degrees:", "Degrees Fahrenheit:");

document.addEventListener("DOMContentLoaded", () => {
	// add event handlers
	$("#convert").addEventListener("click", convertTemp);
    $("#to_celsius").addEventListener("click", toCelsius);
    $("#to_fahrenheit").addEventListener("click", toFahrenheit);
	
	// move focus
	$("#degrees_entered").focus();
});
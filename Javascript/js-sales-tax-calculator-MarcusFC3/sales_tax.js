//Marcus Jones Jr. 
//Ch 4 Lab 2
"use strict";

const $ = selector => document.querySelector(selector);
document.addEventListener("DOMContentLoaded", () => {

    let txtSubtotal = $("#subtotal");
    let txtTaxRate = $("#tax_rate");
    let txtSalesTax = $("#sales_tax");
    let txtTotal = $("#total");
    let btnCalculate = $("#calculate");
    let btnClear = $("#clear")
    txtSubtotal.focus();

    const processEntries = () => {
        let subtotal = parseFloat(txtSubtotal.value);
        let taxRate = parseFloat(txtTaxRate.value);

        if (isNaN(subtotal) || isNaN(taxRate)) {
            window.alert("Please enter valid numbers")
        } else if (subtotal < 0 || subtotal > 10000) {
            window.alert("Please enter a subtotal value ranging from 1-10000")
        } else if (taxRate < 0 || taxRate > 12) {
            window.alert("Please enter a tax rate value ranging from 1-12")
        } else {
            let salesTax = subtotal * taxRate / 100;
            let total = subtotal + salesTax;
            txtSalesTax.value = salesTax.toFixed(2)
            txtTotal.value = total.toFixed(2)
            txtSubtotal.focus()
        }
    }
    const clearText = (txtelement) => {
        txtelement.value = "";
        console.log("yoooo")
    }

    btnClear.addEventListener("click", () => {
        clearText(txtSalesTax);
        clearText(txtTotal);
        clearText(txtSubtotal);
        clearText(txtTaxRate);
        txtSubtotal.focus()
    })


    btnCalculate.addEventListener("click", processEntries)

    txtSubtotal.addEventListener("click", () => clearText(txtSubtotal))
    txtTaxRate.addEventListener("click", () => clearText(txtTaxRate))

})

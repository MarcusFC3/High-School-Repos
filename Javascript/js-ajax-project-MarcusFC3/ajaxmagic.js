let daylbl;
let mainImage;
let caption;
let leftButton;
let rightButton;
let data = [];
//example https://api.nasa.gov/planetary/apod?api_key=cp7Tag7hm6qs8ZWGpoxCDRCN6ebrZWwWOiiM9tY9
let today = new Date();
const dayInMiliseconds = 86400000;
let imageCache = new Array();
let counter = 0;
const api_url = "https://api.nasa.gov/planetary/apod?api_key=cp7Tag7hm6qs8ZWGpoxCDRCN6ebrZWwWOiiM9tY9";

let days = [today];//days is an array that should hold today and the previous 6 days as date objects.
for (let i = 1; i < 7; i++) {//loads array with last 6 days as date objects.
	let day = new Date(Number(today) - (dayInMiliseconds * (7 - i)));
	days.push(day);
}

function click(left) {
	let currentData;
	if(mainImage.prop("src").endsWith("missingdata.jpg")){
		currentData =  "undefined~" + mainImage.prop("alt");
	}
	else{
		currentData = mainImage.prop("src") + "~" + mainImage.prop("alt");
	}
	let currentIndex = imageCache.indexOf(currentData);
	if (left) {
		currentIndex = currentIndex - 1;
		if (currentIndex == -1) {
			currentIndex = 6;
		}
	} else {
		currentIndex = currentIndex + 1;
		if (currentIndex == 7) {
			currentIndex = 0;
		}
	}

	let info = imageCache.at(currentIndex).split("~");

	mainImage.prop("src", info[0]);
	if (info[0] == "undefined") {//If there is no image for the day, display palceholder image.
		mainImage.prop("src", "missingdata.jpg");
	}
		mainImage.prop("alt", info[1]); 
	daylbl.text(days.at(currentIndex).toDateString().substring(0, 15))
	caption.text(info[1])
}

document.addEventListener("DOMContentLoaded", () => {
	daylbl = $("#day");
	caption = $("#caption");
	mainImage = $("img");
	leftButton = $("#left_button");
	rightButton = $("#right_button");
	
	days.forEach(day => {//this for loop places each fetch request in an array
		data.push(fetch(api_url + "&date=" + day.getFullYear() + "-" + day.getMonth() + "-" + day.getDate()).then(async (result) => {
			result = await result.json();
			let image = new Image();
			image.src = result["hdurl"];
			imageCache[days.indexOf(day)] = result["hdurl"] + "~" + result["explanation"]//places images and image captions in array ordered by day.
		}));
	});

	let apodinfo = Promise.all(data);
	apodinfo.then((result) => { //This call back function will execute once all fetch requests are finished and renders the first image.
		let firstContent = imageCache[0].split("~");
		mainImage.prop("src", firstContent[0]);
		mainImage.prop("alt", firstContent[1]);
		daylbl.text(days[0].toDateString().substring(0, 15))
		caption.text(firstContent[1])
	})


	leftButton.on("click", () => {
		click(true);
	})
	rightButton.on("click", () => {
		click(false);
	})


	//let dateImageTaken = $("#img_taken");







	//dateImageTaken.text("Date Image Taken: " + )



	//TODO
	//Get images for each date; maybe i need the last 6 days?
	//preload them
	//place them in image carosel
	//add info like caption or date of photo
	//style some more
	//profit?



});

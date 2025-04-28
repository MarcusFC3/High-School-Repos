
//example https://api.nasa.gov/planetary/apod?api_key=cp7Tag7hm6qs8ZWGpoxCDRCN6ebrZWwWOiiM9tY9
let today = new Date();
const dayInMiliseconds = 86400000;
let imageCache = new Array();
let counter = 0;
let days = [today];//days is an array that should hold today and the following 6 days as date objects after this for loop.
for (let i = 1; i < 7; i++) {//loads array with next 6 days as date objects.
	let day = new Date(Number(today) - (dayInMiliseconds * i));
	days.push(day);
}
days.forEach(day => {
	console.log(day);
});
let api_url = "https://api.nasa.gov/planetary/apod?api_key=cp7Tag7hm6qs8ZWGpoxCDRCN6ebrZWwWOiiM9tY9"
function click(left){

	let day = imageCache.indexOf(mainImage.src + mainImage.alt);
	if(left){
		day = day - 1;
	} else{
		day = day + 1;
	}
	
	let info = imageCache.at(day);
	mainImage.prop("src", info.split("~")[0]);
	mainImage.prop("alt", info.split("~")[1]);

	day.text(days[day].toDateString().substring(0,15))
	caption.text(info.split("~")[1])
}
document.addEventListener("DOMContentLoaded", () => {
	let day = $("#day");
	let caption = $("#caption");
	let mainImage = $("img");
	let leftButton = $("#left_button");
	let rightButton = $("#right_button");
	// mainImage.prop("src", imgurl);
	// mainImage.prop("alt", source.indexOf(1));	
	// //set day text info
	// day.text(days[0].toString().substring(0,15));
	let data = [];
	days.forEach(day => {
		data.push(fetch(api_url + "&date=" + day.getFullYear() + "-" + day.getMonth() + "-" + day.getDate()).then(async (result) => {
			result = await result.json();
			let image = new Image();
			image.src = result["hdurl"];
			imageCache[days.indexOf(day)] = result["hdurl"] + "~" + result["explanation"]
			
		}));
	});
let apodinfo = Promise.all(data);


apodinfo.then((result)=>{
	console.log(imageCache);
	mainImage.prop("src", imageCache[0].split("~")[0]);
	mainImage.prop("alt", imageCache[0].split("~")[1]);

	day.text(days[0].toDateString().substring(0,15))
	caption.text(imageCache[0].split("~")[1])
})


leftButton.addEventListener("click", ()=>{
	click(true);
})
rightButton.addEventListener("click", ()=>{
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

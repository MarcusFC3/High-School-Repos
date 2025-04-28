"use strict"
$(() => {
    let mainImage = $("img");
    let caption = $("#caption");

    $("li").each((index, link)=>{
        let aTag = $(link).children();
        const img = new Image();
        img.src = aTag.prop("href");
        
        aTag.click((evt)=>{
            evt.preventDefault();
            mainImage.prop("src", aTag.prop("href"));
            caption.text(aTag.prop("title"));
       })
    })
    $("li:first-child").children().focus()
   
})

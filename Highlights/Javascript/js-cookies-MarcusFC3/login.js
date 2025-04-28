"use strict";

const getCookieByName = name => {//if cookie exists, grabs and returns value. if not, returns empty string
    const start = document.cookie.indexOf(name + "=") === -1
    if (start === -1) {
        return "";
    }
    let valueEnd = document.cookie.indexOf(";", start);
    if (valueEnd === -1) {
        valueEnd = document.cookie.length;
    }
    return decodeURIComponent(document.cookie.substring((start + name.length + 1), valueEnd));
};

const setCookie = (name, value, days) => {
    let cookie = name + "=";//add cookie name
    cookie += value;//assign value to name

    if (days) {
        cookie += "; max-age=" + days * 24 * 60 * 60;
    }
    cookie += "; path=/";//set path to root
    document.cookie = cookie;//set document cookie to cookie value
};

const deleteCookie = name => {
    let cookie = name + "=; max-age=" + 0 + "; path=/";//delets cookie with specified name
    document.cookie = cookie;
};

const goToPage = url => {
    location = url;//takes browser to specified page
};
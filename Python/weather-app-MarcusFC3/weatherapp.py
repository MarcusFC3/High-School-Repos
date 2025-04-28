import requests

def main():
    file = open("C:/Users/mjones/apikeys/openweathermap.txt") #hid apikey in local file
    API_KEY = file.readline()
    file.close()
    zip_code = input("Enter your zipcode: ")

    response = requests.get(f"https://api.openweathermap.org/data/2.5/weather?zip={zip_code},us&appid={API_KEY}")

    if str(response) == "<Response [200]>":
        weather_data = response.json()
        print(f"Current Weather for {weather_data["name"]}:")
        print(f"Conditions: {weather_data["weather"][0]["description"].capitalize()}")
        print(f"Temperature: {kelvin_to_fahrenheit(weather_data["main"]["temp"]):.0f} Degrees")
        print(f"Feels Like: {kelvin_to_fahrenheit(weather_data["main"]["feels_like"]):.0f} Degrees")
        print(f"Humidity: {weather_data["main"]["humidity"]}%")
        print(f"Wind: {weather_data["wind"]["speed"]:.0f} knots @ {weather_data["wind"]["deg"]} degrees")
    else:
        print(f"An error occurred: {response}")

def kelvin_to_fahrenheit(kelvin):
    return (kelvin - 273.15) * 9 / 5 + 32

if __name__ == "__main__":
    main()
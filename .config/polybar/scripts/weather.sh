#!/bin/sh

ONECALL="https://api.openweathermap.org/data/2.5/onecall"

# source OW_KEY, LAT, LON, and UNITS
. "$(dirname "$0")/weather.config"

data=$(curl -sf "${ONECALL}?lat=${LAT}&lon=${LON}&units=${UNITS}&appid=${OW_KEY}")
temp=$(echo "$data" | jq -r .current.temp)
weather=$(echo "$data" | jq -r .current.weather[0].icon)

# see https://openweathermap.org/weather-conditions for condition codes
case "$weather" in
    01d) icon= ;;                  # clear sky (day)
    01n) icon= ;;                  # clear sky (night)
    02d|04d) icon= ;;              # few clouds, broken clouds (day)
    02n|04n) icon= ;;              # few clouds, broken clouds (night)
    03d|03n) icon= ;;              # scattered clouds (day or night)
    09d|09n|10d|10n) icon= ;;      # shower rain, rain (day or night)
    11d|11n) icon= ;;              # thunderstorm (day or night)
    13d|13n) icon= ;;              # snow (day or night)
    50d|50n) icon= ;;              # mist (day or night)
    *) icon= ;;                    # other
esac

echo "$icon $temp °F"

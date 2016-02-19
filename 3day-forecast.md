
<style type="text/css">
body {font-size: 1em; font-family: Helvetica, Arial, sans-serif;}
h1, h2, h3, h4 {font-family: Helvetica, Arial, sans-serif; font-style: normal;}
h1 {font-size: 180%; font-weight: bold;}
h2 {font-size: 160%; font-weight:bold;}
h3 {font-size: 120%; font-weight:bold; color:#4E84C4;}
h4 {font-size: 110%; font-weight:bold;}
table, th, td { border: 1px solid black; }
table { border-collapse: collapse; }
th, td { padding: 5px; text-align: left; }
tr:nth-child(even) {background-color: #f2f2f2}
th { background-color: #c0c0c0; color: black; }
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</meta></style>


## Multi-day Forecast Data

| **Element** | **Description** | **Type** | **Notes** |
|-------------|-----------------|----------|-----------|
|  **longitude**     |    Longitude of forecast location    |  number   |     |
|  **latitude**      |    Latitude of forecast location      |  number   |     |
| **forecasts** | Returned forecast data for location | Array |   |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**date**  | Date of forecast  | string | In YYYY-MM-DD formate |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**description** | Description of the weather | string | Valid values are "sunny", "overcast", "partly cloud", "raining", and "snowing". |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**maxTemp** | The max (high) temperature for the forecast date | number | Temperature is in degrees Celsius |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**minTemp** | The minimum (low) temperature for the forecast date | number | Temperature is in degrees Celsius |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**windSpeed** | Maximum expected wind speed for the forecast date | number | Wind speed is in kph (kilometers per hour) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**danger** | "true" if weather conditions are dangerous, "false" otherwise | boolean | |




### Sample Response

```json

```

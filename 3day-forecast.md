



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

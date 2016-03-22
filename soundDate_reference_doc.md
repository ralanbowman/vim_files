<!-- This is from Peter Gruenbaum's Udemy API course -->

## Upload a Sound File

Upload a sound file to a user's profile

**URL:** `POST https://api.sounddate.com/profile/sound`

### Headers

| Header Name | Description     | Required     | Notes     |
|-------------|-----------------|--------------|-----------|
|  **Bearer**  |    Access token   |  Required   |  |
|  **Content-Type**  |    Sound file format    |  Optional  | Valid values: audio/mpeg (mp3) or audio/x-wav (wav). Default is audio/mpeg.     |
|  **Accept**  |    Response format   |  Optional   | Valid values: application/json or application/xml. Default is application/json.     |


### POST Body

The sound file.

**Note** - the sound file must be 5 minutes (300 seconds) or shorter.

**Sample Request**

`POST https://api.sounddate.com/profile/sound`

`Bearer: {access token}`  
`Content-Type: audio/mpeg`  
`Accept: application/json`  

`{sound file}`


### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **id**     |    The ID of the new sound file   |  integer   |  &nbsp;    |
|  **length**  |    Length of the sound file   |  float   |  Value is in seconds    |

**Sample Response**

```json
{  
"id": 13579,  
"length": 3.50  
}  
```

## Retrieve a list of sound files

Retrieve a list of sound files from a users profiles

**URL:** `GET https://api.sounddate.com/user/{userid}profile/sound`

### Query Parameters

| Parameter   | Description     | Type     | Required     | Notes     |
|-------------|-----------------|----------|--------------|-----------|
|  **sortOrder** |    The order in which the sound files are returned   |  string   |  Optional   | Valid values are: mostRecent, earliest, shortest, longest. Default is mostRecent.     |

### Headers

| Header Name | Description     | Required     | Notes     |
|-------------|-----------------|--------------|-----------|
|  **Bearer**  |    The access token        |  Required       |      |
|  **Accept**  |    The response formate  |  Optional    | Valid values are: application/xml or application/json. Default is application/json.     |


### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **soundFiles**  |    The sound files returned   |  array   |      |
| &nbsp;&nbsp;&nbsp; **id**  |    The ID of the sound file        |  integer   |  |
| &nbsp;&nbsp;&nbsp; **url**  |    The URL to the sound file  |  string   |  |
| &nbsp;&nbsp;&nbsp; **length**  |    The length of the sound file   |  float   |  &nbsp;    |

**Sample Response**

```json
{
  "soundFiles": [
    {
      "id": 23456,
      "url": "https://api.sounddate.com/profile/sound/23456.mp3",
      "length": 11.2
    },
    {
      "id": 24559,
      "url": "https://api.sounddate.com/profile/sound/24559.mp3",
      "length": 19.8
    }
  ]
}
```

## Status Codes and Errors

|     Code    | Description     |  Notes       |
|-------------|-----------------|--------------|
|  **200**    |    OK           |  Success for POST and GET    |
|  **401**    |    Unauthorized        |  Access token invalid       |
|  **413**    |    Request Entity Too Large        |  POSTed sound file too long       |
<!-- This is from Peter Gruenbaum's Udemy API course -->

## Retrieve a list of all interviews

Returns a basic list of all interviews currently available.

**Note** - this will return a long list of items.

**URL:** `GET https://usesthis.com/api/v1/interviews`

### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **interviews**  |  Basic interview information  |  JSON array   |      |
| &nbsp;&nbsp;&nbsp; **slug**  |    Page ID        |  string   |  In "first.last" name format   |
| &nbsp;&nbsp;&nbsp; **name**  |    Full name        |  string   |  First and last name |
| &nbsp;&nbsp;&nbsp; **url**  |    Link to full interview   |  string   |  |
| &nbsp;&nbsp;&nbsp; **summary**  |    Summary of the interview  |  string   |  |
| &nbsp;&nbsp;&nbsp; **date**  |    Date interview was posted  |  integer   |  **date** is in UNIX epoch time  |
| &nbsp;&nbsp;&nbsp; **categories**  |    List of categories for the interview  |  JSON array   |    |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **credits**  |  Photo credit for interview picture  |  JSON object   |  Credit only listed when provided  |
|  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **name**  |    Name of photographer   |  string   |  &nbsp;    |

**Sample Response**

```json
{
  "interviews": [
    {
      "slug": "nina.freeman",
      "name": "Nina Freeman",
      "url": "http://usesthis.com/interviews/nina.freeman/",
      "summary": "Level designer (Fullbright), game designer (Cibele)",
      "date": 1458198000,
      "categories": [
        "developer",
        "designer",
        "game",
        "mac",
        "windows"
      ]
    },
    {
      "slug": "megan.prelinger",
      "name": "Megan Prelinger",
      "url": "http://usesthis.com/interviews/megan.prelinger/",
      "summary": "Writer, historian, librarian, naturalist",
      "date": 1458025200,
      "categories": [
        "historian",
        "librarian",
        "mac",
        "naturalist",
        "writer"
      ],
      "credits": {
        "name": "Rick Prelinger (© 2014)"
      }
    }
  ]
}
```
<br />

## Retrieve a complete interview

Returns a complete interview including gear (hardware and software used).

**URL:** `GET https://usesthis.com/api/v1/interviews/{slug}`

### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **interview**  |    Complete interview information  |  JSON object   |      |
| &nbsp;&nbsp;&nbsp; **slug**  |    Page ID      |  string   |  In "first.last" name  format   |
| &nbsp;&nbsp;&nbsp; **name**  |   Name of person being interviewed  |  string   |  First and last names     |
| &nbsp;&nbsp;&nbsp; **url**  |    Link to full interview   |  string   |      |
| &nbsp;&nbsp;&nbsp; **summary**  |    Summary of the interview   |  string   |     |
| &nbsp;&nbsp;&nbsp; **date**  |    Date the interview was posted    |  integer   |  **date** is in UNIX epoch time    |
| &nbsp;&nbsp;&nbsp; **categories**  |    List of categories  |  JSON array   |      |
| &nbsp;&nbsp;&nbsp; **credits**  |    Photo credit for interview picture  |  JSON object   |  Credit only listed when provided  |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**name**  |    Name of photographer   |  string   |  &nbsp;    |
| &nbsp;&nbsp;&nbsp; **contents**  |    Full text of the interview   |  string   |  Text is in Markdown format   |
| &nbsp;&nbsp;&nbsp; **gear**  |    List of hardware and software used  |  JSON object   |      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **hardware**  |    List of hardware  |  JSON array   |    |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **slug**  |   Hardware page ID  |  string   |  In "name-of-hardware"  format   |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **name**  |    Name of the hardware  |  string   |  Vendor product name    |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **description**  |    General description     |  string   |  |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **url**  |    Link to product website  |  string   |  |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **software**  |    List of software  |  JSON array   |    |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **slug**  |   Software page ID  |  string   |  In "name-of-software"  format   |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **name**  |    Name of the software  |  string   |  Vendor product name    |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **description**  |    General description     |  string   |  |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **url**  |    Link to product website  |  string   | &nbsp;  |

**Sample Response**

```json
{
  "interview": {
    "slug": "megan.prelinger",
    "name": "Megan Prelinger",
    "url": "http://usesthis.com/interviews/megan.prelinger/",
    "summary": "Writer, historian, librarian, naturalist",
    "date": 1458025200,
    "categories": [
      "historian",
      "librarian",
      "mac",
      "naturalist",
      "writer"
    ],
    "credits": {
      "name": "Rick Prelinger (© 2014)"
    },
    "contents": "#### Who are you, and what do you do?\n\n[I'm](http://meganprelinger.com/ \"Megan's website.\") a writer, a...(output truncated) .",
    "gear": {
      "hardware": [
        {
          "slug": "macbook-pro",
          "name": "MacBook Pro",
          "description": "A laptop.",
          "url": "http://www.apple.com/macbook-pro/"
        },
        {
          "slug": "my-passport-ultra",
          "name": "My Passport Ultra",
          "description": "A portable external hard drive.",
          "url": "http://www.wdc.com/en/products/products.aspx?id=1000"
        }
      ],
      "software": [
        {
          "slug": "textedit",
          "name": "TextEdit",
          "description": "A text editor included with Mac OS X.",
          "url": "https://support.apple.com/en-us/HT2523"
        }
      ]
    }
  }
}
```

## Retrieve a list of all categories

Returns a basic list of all categories currently available.

**URL:** `GET https://usesthis.com/api/v1/categories`


### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **categories**  |    List of all categories |  JSON array   | Values returned are the {slug} names for each category     |

**Sample Response**

```json
{
  "categories": [
    "activist",
    "actor",
    "agriculture",
    "animal",
    "animator",
    "anthropologist",
    "architect",
    "artist",
    "astrologer",
    "athlete",
    "audio",
    "baker",
    "beekeeper",
    "output truncated...",
    "windows",
    "witch",
    "writer"
  ]
}
```


## Retrieve a list of all interviews using a category

Returns a list of all interviews that mention a specific category.

**URL:** `GET https://usesthis.com/api/v1/categories/{slug}`


### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **interviews**  |    List of interviews using a category  |  JSON array   |      |
| &nbsp;&nbsp;&nbsp;**slug**  |    Category ID  |  string   |      |
| &nbsp;&nbsp;&nbsp; **name**  |    Full name        |  string   |  First and last name |
| &nbsp;&nbsp;&nbsp; **url**  |    Link to full interview   |  string   |  |
| &nbsp;&nbsp;&nbsp; **summary**  |    Summary of the interview  |  string   |  |
| &nbsp;&nbsp;&nbsp; **date**  |    Date interview was posted  |  integer   |  **date** is in UNIX epoch time  |
| &nbsp;&nbsp;&nbsp; **categories**  |    List of categories for the interview  |  JSON array   |    |

**Sample Response**

```json
{
  "interviews": [
    {
      "slug": "joshua.stein",
      "name": "joshua stein",
      "url": "http://usesthis.com/interviews/joshua.stein/",
      "summary": "Developer (Pushover, Lobsters)",
      "date": 1423555200,
      "categories": [
        "bsd",
        "developer",
        "mac",
        "software",
        "web"
      ]
    },
    {
      "slug": "brendan.gregg",
      "name": "Brendan Gregg",
      "url": "http://usesthis.com/interviews/brendan.gregg/",
      "summary": "Senior performance architect (Netflix)",
      "date": 1405407600,
      "categories": [
        "bsd",
        "developer",
        "linux",
        "mac",
        "software",
        "windows"
      ]
    },
  ]
}
```

## Retrieve a list of all hardware or software

Returns a list of either all the hardware or all the software mentioned in all interviews.

**Note** - this will return a long list of items.

**URL:** `GET https://usesthis.com/api/v1/hardware` (for a full list of hardware)  
**URL:** `GET https://usesthis.com/api/v1/software` (for a full list of software)

### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **gear**  |    List of all hardware or software mentioned in all interviews |  JSON array   |      |
| &nbsp;&nbsp;&nbsp; **slug**  |    Hardware or software ID        |  string |     |
| &nbsp;&nbsp;&nbsp; **name**  |    Full name for each piece of hardware or software  |  string   |  &nbsp;    |

**Sample Response**
This sample shows the response for `/software`

```json
{
  "gear": [
    {
      "slug": "1-second-everyday-ios",
      "name": "1 Second Everyday (iOS)"
    },
    {
      "slug": "101-sex-tips-ios",
      "name": "101 Sex Tips (iOS)"
    },
    {
      "slug": "1073-console-module",
      "name": "1073 Console Module"
    },
    {
      "slug": "1176-peak-limiter",
      "name": "1176 Peak Limiter"
    }
    "Output truncated..."
  ]
}
```

## Retrieve a list of all interviews using specific hardware or software

Returns a list of all interviews that mention the specified hardware or software.

**Note** - this could return a long list of items.

**URL:** `GET https://usesthis.com/api/v1/hardware{slug}`   
**URL:** `GET https://usesthis.com/api/v1/software{slug}`   


### Response

| Element     |   Description   |   Type   |   Notes   |
|-------------|-----------------|----------|-----------|
|  **gear**  | Hardware or software mentioned in interviews |  JSON object   |      |
| &nbsp;&nbsp;&nbsp; **slug**  |    Hardware or software ID        |  string |     |
| &nbsp;&nbsp;&nbsp; **name**  |    Full name for each piece of hardware or software  |  string   |  &nbsp;    |
| &nbsp;&nbsp;&nbsp; **description**  |    General description of the hardware or software |  string   |  |
| &nbsp;&nbsp;&nbsp; **url**  |    Link to product website  |  string   |  |
| &nbsp;&nbsp;&nbsp; **interviews**  |    List of interviews that mention the hardware or software  |  JSON array   |  |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **slug**  |    Page ID      |  string   |  In "first.last" name  format   |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; **name**  |   Name of person being interviewed  |  string   |  First and last names     |

**Sample Response**

```json
{
  "gear": {
    "slug": "mac-pro",
    "name": "Mac Pro",
    "description": "The Intel-based Mac tower computer.",
    "url": "http://www.apple.com/mac-pro/",
    "interviews": [
      {
        "slug": "stephin.merritt",
        "name": "Stephin Merritt"
      },
      {
        "slug": "josh.millard",
        "name": "Josh Millard"
      }
    ]
  }
}
```

---

## Status Codes and Errors

|     Code    | Description     |  Notes       |
|-------------|-----------------|--------------|
|  **200**    |    OK           |  Success     |
|  **404**    |    Not found    |  API endpoint not found |

API ENDPOINT BASEURL http://localhost:8080/animals
ENUM Types == Intellect average, smart, superSmart, genius

Get Mapping
http://localhost:8080/animals      Gets All Animals

http://localhost:8080/animals/{id}  Gets Animals by ID

http://localhost:8080/animals/intellect/{intellect}      Gets Animals by Intellect

http://localhost:8080/animals/name?search=               Gets Animals by Name

Post Mapping
http://localhost:8080/animals/new                        Creates New Animal

Put Mapping
http://localhost:8080/animals/update/{id}                Updates Animal By ID  

Delete Mapping
http://localhost:8080/animals/delete/{id}                Deletes Animal By ID

EXAMPLE JSON ENTRY 
{
        "id": 1,
        "name": "dogs",
        "description": "small tail",
        "intellect": "genius"
    }

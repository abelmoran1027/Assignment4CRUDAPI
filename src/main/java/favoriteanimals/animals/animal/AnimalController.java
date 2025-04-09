package favoriteanimals.animals.animal;

import favoriteanimals.animals.EnumType.Intellect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/animals")
public class AnimalController {

    @Autowired
    private AnimalService service;

    @GetMapping                                                                                         // Get Mapping
    public Object getAllAnimals() {
        return new ResponseEntity<>(service.getAllAnimals(), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public Object getAnimalbyId(@RequestBody Animal animal, @PathVariable Integer id) {
        service.updateAnimal(id, animal);
        return new ResponseEntity<>(service.getAnimalById(id), HttpStatus.OK);
    }


    @GetMapping("/intellect/{intellect}")
    public Object getAnimalByIntellect(@PathVariable Intellect intellect){
        return new ResponseEntity<>(service.getAllAnimalByIntellect(intellect), HttpStatus.OK);
    }

    @GetMapping("/name")
    public Object getAnimalByName(@RequestParam(name = "search", defaultValue = "") String search) {
        return new ResponseEntity<>(service.getAnimalByName(search), HttpStatus.OK);

    }

    @PostMapping("/new")                                                                                //Post Mapping
    public Object addNewAnimal(@RequestBody Animal animal) {
        service.addNewAnimal(animal);
        return new ResponseEntity<>(service.getAllAnimals(), HttpStatus.CREATED);
    }

    @PutMapping("/update/{id}")                                                                         //Put Mapping
    public Object updateAnimal(@RequestBody Animal animal, @PathVariable Integer id){
        service.updateAnimal(id, animal);
        return new ResponseEntity<>(service.getAllAnimals(), HttpStatus.CREATED);
    }

    @DeleteMapping("/delete/{id}")                                                                      //Delete Mapping
    public Object deleteAnimal(@RequestBody Animal animal, @PathVariable Integer id){
        service.deleteAnimal(id, animal);
        return new ResponseEntity<>(service.getAllAnimals(), HttpStatus.CREATED);
    }
}
package favoriteanimals.animals.animal;

import favoriteanimals.animals.EnumType.Intellect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/animals")
public class AnimalController {

    @Autowired
    private AnimalService service;

    @GetMapping                                                                                         // Get Mapping
    public Object getAllAnimals(Model model) {
        //return new ResponseEntity<>(service.getAllAnimals(), HttpStatus.OK);
        model.addAttribute("animalList", service.getAllAnimals());
        model.addAttribute("title", "All Animals");
        return "animal-list";
    }

    @GetMapping("/{id}")
    public Object getAnimalbyId(Model model, @PathVariable Integer id) {
        model.addAttribute("animal", service.getAnimalById(id));
        model.addAttribute("title", "Animal ID = " + id);
        return "animal-details";
    }


    @GetMapping("/intellect/{intellect}")
    public Object getAnimalByIntellect(@PathVariable Intellect intellect, Model model){
        model.addAttribute("animalList", service.getAllAnimalByIntellect(intellect));
        model.addAttribute("title", "All animals with " + intellect.toString() + "Intellegence");
        return "animal-details";
    }

    @GetMapping("/name")
    public Object getAnimalByName(@RequestParam(name = "search", defaultValue = "") String search, Model model) {
        model.addAttribute("animalList", service.getAnimalByName(search));
        model.addAttribute("title", "Animals by Name" + search);
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
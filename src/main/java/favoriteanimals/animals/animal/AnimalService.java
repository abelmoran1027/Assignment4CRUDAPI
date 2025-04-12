package favoriteanimals.animals.animal;

import favoriteanimals.animals.EnumType.Intellect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnimalService {

    @Autowired
    private AnimalRepository animalRepository;

    public List<Animal> getAllAnimals() {
        return animalRepository.findAll();
    }

    public Animal getAnimalById(int id) {
        return animalRepository.findById(id).orElse(null);
    }

    public List<Animal> getAllAnimalByIntellect(Intellect intellect){
        return animalRepository.getAnimalByIntellect(intellect);
    }

    public List<Animal> getAnimalByName(String name) {
        return animalRepository.getAnimalByName(name);
    }

    public void addNewAnimal(Animal animal) {
        animalRepository.save(animal);
    }

    public void updateAnimal(int id, Animal animal){
        Animal existing = getAnimalById(id);
        existing.setName(animal.getName());
        existing.setDescription(animal.getDescription());
        existing.setIntellect(animal.getIntellect());

        animalRepository.save(existing);
    }

    public void deleteAnimal(int id) {
        animalRepository.deleteById(id);
    }
}

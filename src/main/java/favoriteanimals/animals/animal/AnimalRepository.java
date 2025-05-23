package favoriteanimals.animals.animal;

import favoriteanimals.animals.EnumType.Intellect;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnimalRepository extends JpaRepository<Animal, Integer> {
    List<Animal> getAnimalByIntellect(Intellect intellect);
    List<Animal> getAnimalByName(String name);
}


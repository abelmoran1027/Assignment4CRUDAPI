package favoriteanimals.animals.animal;


import favoriteanimals.animals.EnumType.Intellect;
import jakarta.persistence.*;

@Entity
@Table(name = "animals")
public class Animal {
    @Id                                                                                 //Varaible for Animals
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String name;

    @Column
    private String description;

    @Column
    @Enumerated(EnumType.STRING)
    private Intellect intellect;

    public Animal() {}                                                                  //Contructors

    public Animal(String name, String description, Intellect intellect) {
        this.name = name;
        this.description = description;
        this.intellect = intellect;
    }

    public Animal(String name, String description) {
        this.name = name;
        this.description = description;
    }

    public Integer getId() { return id; }                                               //Getters and Setters

    public void setId(Integer id) { this.id = id; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getDescription() {return description;}

    public void setDescription(String description) {this.description = description;}

    public Intellect getIntellect(){return intellect;}

    public void setIntellect(Intellect intellect){this.intellect = intellect;}

}

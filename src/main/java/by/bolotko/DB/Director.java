package by.bolotko.DB;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class Director {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String first_name;

    private String last_name;

    private String birth_date;

    @OneToMany(mappedBy = "director_id", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Film> films;

    public Director(String first_name, String last_name, String birth_date) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.birth_date = birth_date;
    }

    @Override
    public String toString() {
        return "id = " + id +
                ", Director name = " + first_name + " " + last_name;
    }
}

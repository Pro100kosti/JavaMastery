package by.bolotko.DB;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "Cinema")
public class Director {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String first_name;

    private String last_name;

    private String birth_date;

    public Director(String first_name, String last_name, String birth_date) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.birth_date = birth_date;
    }
}
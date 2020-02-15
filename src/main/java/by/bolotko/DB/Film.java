package by.bolotko.DB;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;

@NoArgsConstructor
@Data
@ToString
@Entity
public class Film {

    @Id
    @SequenceGenerator(name = "film_seq", sequenceName = "SEQ_FILM", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "film_seq")
    private Long id;

    @ManyToOne
    private Director director_id;

    private String name;

    private String release_date;

    private String genre;

    public Film(String name, String release_date, String genre, Director director_id) {
        this.name = name;
        this.release_date = release_date;
        this.genre = genre;
        this.director_id = director_id;
    }
}

package by.bolotko.services;

import by.bolotko.DB.Director;
import by.bolotko.repositorys.DirectorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class DirectorService {

    @Autowired
    DirectorRepository directorRepository;

    public DirectorService(DirectorRepository directorRepository) {
        this.directorRepository = directorRepository;
    }

    public boolean saveDirector(Director director) {
        if (director.getFirst_name() == null || director.getLast_name() == null ||
                director.getBirth_date() == null) {
            return false;
        } else {
            directorRepository.save(director);
            return true;
        }
    }

    public boolean deleteDirectorById(Integer id){
        if (id == 0) {
            return false;
        } else {
            directorRepository.deleteById(id);
            return true;
        }
    }

    public List<Director> getAllDirectors() {
        return (List<Director>) directorRepository.findAll();
    }

    public Optional<Director> findDirector(Integer id) {
        return directorRepository.findById(id);
    }


}

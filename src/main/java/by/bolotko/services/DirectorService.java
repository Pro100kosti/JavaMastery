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

    public void saveDirector(Director director) {
        directorRepository.save(director);
    }

    public List<Director> getFirstTopTenDirectors() {
        return (List<Director>) directorRepository.findAll();
    }

    public Optional<Director> findDirector(Integer id) {
        return directorRepository.findById(id);
    }


}

package by.bolotko.services;

import by.bolotko.DB.Director;
import by.bolotko.repositorys.DirectorRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class DirectorService {

    private final DirectorRepository directorRepository;

    public DirectorService(DirectorRepository directorRepository) {
        this.directorRepository = directorRepository;
    }

    public void saveDirector(Director director) {
        directorRepository.save(director);
    }

}

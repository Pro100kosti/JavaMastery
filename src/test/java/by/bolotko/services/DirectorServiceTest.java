package by.bolotko.services;

import by.bolotko.DB.Director;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


@RunWith(SpringRunner.class)
@SpringBootTest
public class DirectorServiceTest {
    @Autowired
    private DirectorService directorService;

    @Test
    public void saveAndDeleteDirector() {
        Director director = new Director();
        director.setFirst_name("Test_first_name");
        director.setLast_name("Test_last_name");
        director.setBirth_date("Test_birth_date");
        boolean result = directorService.saveDirector(director);
        Assert.assertTrue(result);

        result = directorService.deleteDirectorById(director.getId());
        Assert.assertTrue(result);
    }
}
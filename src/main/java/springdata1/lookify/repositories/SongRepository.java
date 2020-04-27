package springdata1.lookify.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import springdata1.lookify.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long>{
	List<Song> findAll();
	Optional<Song> findById(Long id);
	void deleteById(Long id);
	Optional<List<Song>> findByArtistContaining(String artist); // I'll try this. If it doesn't work, then try findByArtist
	Optional<List<Song>> findAllByOrderByRatingDesc();
	
}

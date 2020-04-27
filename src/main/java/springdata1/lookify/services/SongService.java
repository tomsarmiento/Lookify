package springdata1.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import springdata1.lookify.models.Song;
import springdata1.lookify.repositories.SongRepository;

@Service
public class SongService {
	private final SongRepository songRepository;
	
	public SongService(SongRepository songRepository) {
		this.songRepository=songRepository;
	}
	
	public void createSong(Song s) {
		songRepository.save(s);
	}
	
	public List<Song> allSongs(){
		return songRepository.findAll();
	}
	
	public Song findById(Long id){
		Optional<Song> optionalSong = songRepository.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		}
		else {
			return null;
		}
	}
	
	public void deleteById(Long id) {
		songRepository.deleteById(id);
	}
	
	public List<Song> findByArtist(String artist){
		Optional<List<Song>> optionalListSong = songRepository.findByArtistContaining(artist);
		if(optionalListSong.isPresent()) {
			return optionalListSong.get();
		}
		else {
			return null;
		}
	}
	
	public List<Song> top(){
		Optional<List<Song>> optionalListSong = songRepository.findAllByOrderByRatingDesc();
		if(optionalListSong.isPresent()) {
			return optionalListSong.get();
		}
		else {
			return null;
		}
	}
}

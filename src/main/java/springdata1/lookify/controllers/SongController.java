package springdata1.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import springdata1.lookify.models.Song;
import springdata1.lookify.services.SongService;

@Controller
public class SongController {
	private final SongService songService;
	
	public SongController(SongService songService) {
		this.songService = songService;
	}
	
	@RequestMapping("")
	public String index() {
		return "lookify/index.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = songService.allSongs();
		model.addAttribute("songs", songs);
		return "lookify/dashboard.jsp";
	}
	
	@RequestMapping(value="/dashboard", method=RequestMethod.POST)
	public String newSong(@Valid @ModelAttribute Song song, BindingResult result) {
		if(result.hasErrors()) {
			return "lookify/new.jsp"; // Im afraid this won't work.
		}
		else {
			songService.createSong(song);
			return "redirect:/dashboard";
		}
	}
	
	@RequestMapping("/songs/new")
	public String toNewSong(@ModelAttribute Song song) {
		return "lookify/new.jsp";
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String search(Model model, @RequestParam("artist") String artist) {
		List<Song> songs = songService.findByArtist(artist);
		model.addAttribute("artist", artist);
		model.addAttribute("songs", songs);
		return "lookify/search.jsp";
	}
	
	@RequestMapping("/search/topten")
	public String topTen(Model model) {
		List<Song> songs = songService.top();
		model.addAttribute("songs", songs);
		System.out.println(songs);
		return "lookify/topten.jsp";
	}
	
	@RequestMapping(value="/songs/{id}", method=RequestMethod.DELETE)
	public String deleteSong(@PathVariable Long id) {
		songService.deleteById(id);
		return "redirect:/dashboard";
	}
	
	@RequestMapping("/songs/{id}")
	public String details(@PathVariable Long id, Model model) {
		Song s = songService.findById(id);
		model.addAttribute("song", s);
		return "lookify/details.jsp";
	}
}

package br.edu.infnet.lojadaprata.model.service;

import br.edu.infnet.lojadaprata.model.domain.Anel;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.repository.AnelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Collection;

@Service
public class AnelService {

	@Autowired
	private AnelRepository anelRepository;

	public Anel novo(Anel anel) {
		return anelRepository.save(anel);
	}

	public void apagar(Integer id) {
		anelRepository.deleteById(id);
	}

	public Collection<Anel> listagem(){
		return (Collection<Anel>) anelRepository.findAll();
	}

	public Collection<Anel> listagem(Usuario cadastro){
		return (Collection<Anel>) anelRepository.listagem(cadastro.getId());
	}
	public Anel obterPorId(Integer id) {
		return anelRepository.findById(id).orElse(null);
	}
}
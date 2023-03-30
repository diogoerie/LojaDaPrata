package br.edu.infnet.lojadaprata.model.service;

import br.edu.infnet.lojadaprata.model.domain.Colar;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.repository.ColarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class ColarService {

	@Autowired
	private ColarRepository colarRepository;

	public Colar novo(Colar colar) {
		return colarRepository.save(colar);
	}

	public void apagar(Integer id) {
		colarRepository.deleteById(id);
	}

	public Collection<Colar> listagem(){
		return (Collection<Colar>) colarRepository.findAll();
	}

	public Collection<Colar> listagem(Usuario cadastro){
		return (Collection<Colar>) colarRepository.listagem(cadastro.getId());
	}
	public Colar obterPorId(Integer id) {
		return colarRepository.findById(id).orElse(null);
	}
}
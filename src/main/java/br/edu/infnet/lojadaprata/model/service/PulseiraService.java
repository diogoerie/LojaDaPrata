package br.edu.infnet.lojadaprata.model.service;

import br.edu.infnet.lojadaprata.model.domain.Pulseira;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.repository.PulseiraRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class PulseiraService {

	@Autowired
	private PulseiraRepository pulseiraRepository;

	public Pulseira novo(Pulseira pulseira) {
		return pulseiraRepository.save(pulseira);
	}

	public void apagar(Integer id) {
		pulseiraRepository.deleteById(id);
	}

	public Collection<Pulseira> listagem(){
		return (Collection<Pulseira>) pulseiraRepository.findAll();
	}

	public Collection<Pulseira> listagem(Usuario cadastro){
		return (Collection<Pulseira>) pulseiraRepository.listagem(cadastro.getId());
	}
	public Pulseira obterPorId(Integer id) {
		return pulseiraRepository.findById(id).orElse(null);
	}
}
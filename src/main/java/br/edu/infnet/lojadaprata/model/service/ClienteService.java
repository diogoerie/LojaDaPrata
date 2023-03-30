package br.edu.infnet.lojadaprata.model.service;

import br.edu.infnet.lojadaprata.model.domain.Cliente;
import br.edu.infnet.lojadaprata.model.domain.Usuario;
import br.edu.infnet.lojadaprata.model.repository.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Collection;

@Service
public class ClienteService {

	@Autowired
	private ClienteRepository clienteRepository;

	public Cliente novo(Cliente cliente) {
		return clienteRepository.save(cliente);
	}

	public void apagar(Integer key) {
		clienteRepository.deleteById(key);
	}

	public Collection<Cliente> listagem(){
		return (Collection<Cliente>) clienteRepository.findAll();
	}

	public Collection<Cliente> listagem(Usuario cadastro){
		return clienteRepository.listagem(cadastro.getId());
	}
}
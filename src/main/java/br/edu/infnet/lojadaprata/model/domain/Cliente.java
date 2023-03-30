package br.edu.infnet.lojadaprata.model.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import excecoes.ClienteInvalidoExcecao;


@Entity
@Table(name = "TCliente")
public class Cliente {

	private String nome;
	private String email;
	private String cep;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario cadastro;

	public Cliente(){

	}
	public Cliente(String nome,String email,String cep)throws ClienteInvalidoExcecao{

		if(nome == null){
			throw new ClienteInvalidoExcecao("O campo NOME deve ser preechido.");
		}
		if(email == null){
			throw new ClienteInvalidoExcecao("O campo EMAIL deve ser preechido.");
		}
		if(cep == null){
			throw new ClienteInvalidoExcecao("O campo CEP deve ser preechido.");
		}
		this.nome = nome;
		this.email = email;
		this.cep = cep;
	}
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(nome);
		sb.append(";");
		sb.append(email);
		sb.append(";");
		sb.append(cep);
		return sb.toString();
	}
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Usuario getCadastro() {
		return cadastro;
	}
	public void setCadastro(Usuario cadastro) {
		this.cadastro = cadastro;
	}
}

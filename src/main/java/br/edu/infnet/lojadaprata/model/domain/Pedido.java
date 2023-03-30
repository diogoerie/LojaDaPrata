package br.edu.infnet.lojadaprata.model.domain;

import excecoes.ClienteInvalidoExcecao;
import excecoes.QuantidadeInvalidaExcecao;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.*;
import java.text.DateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.List;

@Entity
@Table(name = "TPedido")
public class Pedido {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String carrinho;
	private String codigoProduto;
	private LocalDateTime data;
	@OneToOne(cascade = CascadeType.DETACH)
	@JoinColumn(name = "idCLiente")
	private Cliente cliente;
	@ManyToMany(cascade = CascadeType.DETACH)
	private List<Produto> produtos;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario cadastro;
	DateFormat dataFormato = DateFormat.getDateInstance();
	Calendar cals = Calendar.getInstance();
	String dataAtual = dataFormato.format(cals.getTime());


	public Pedido(){

	}

	public Pedido(Cliente cliente, List<Produto> produtos) throws ClienteInvalidoExcecao, QuantidadeInvalidaExcecao {
		this();
		if(cliente == null) {
			throw new ClienteInvalidoExcecao("Não existe nenhum cliente associado ao pedido!");
		}

		if(produtos == null) {
			throw new QuantidadeInvalidaExcecao("Não existe nenhum produto associado ao pedido!");
		}
		this.cliente = cliente;
		this.produtos = produtos;
		data = LocalDateTime.now();
	}
	public String mostrar() {
		String mostrar = "";
		for(Produto produto :produtos){ mostrar += produto;}
		return this+"\n Produtos \n"+ mostrar;
	}

	public String obterLinha() {
		return this.getCarrinho() +";"+ this.getCliente() +";"+ this.getProdutos().size() +"\r\n";}

    /*public Pedido() {
        data = LocalDateTime.now();
    }*/

	public LocalDateTime getData() {
		return data;
	}

	@Override
	public String toString() {
		return String.format("%s;%s;%s", carrinho, codigoProduto, dataAtual);}

	public String getCarrinho() {
		return carrinho;}
	public void setCarrinho(String carrinho) {
		this.carrinho = carrinho;}
	public String getCodigoProduto() {
		return codigoProduto;}
	public void setCodigoProduto(String codigoProduto) {
		this.codigoProduto = codigoProduto;}
	public void setCliente(Cliente cliente){
		this.cliente = cliente;}
	public List<Produto> getProdutos() {
		return produtos;}
	public Cliente getCliente() {
		return cliente;}

	public void setData(LocalDateTime data) {
		this.data = data;
	}

	public void setProdutos(List<Produto> produtos) {
		this.produtos = produtos;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public DateFormat getDataFormato() {
		return dataFormato;
	}

	public void setDataFormato(DateFormat dataFormato) {
		this.dataFormato = dataFormato;
	}

	public String getDataAtual() {
		return dataAtual;
	}

	public void setDataAtual(String dataAtual) {
		this.dataAtual = dataAtual;
	}

	public Usuario getCadastro() {
		return cadastro;
	}

	public void setCadastro(Usuario cadastro) {
		this.cadastro = cadastro;
	}
}

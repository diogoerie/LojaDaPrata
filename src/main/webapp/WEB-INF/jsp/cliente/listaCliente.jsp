<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="stylesheet" href="style.css">
    <title>Lista de cadastros de clientes</title>
</head>
<body>
<header>
    <div class="containerlogo">
        <a href="/"><img src="logo.png" class="logoimg"></a>
    </div>
    <div class="menu">
        <c:if test="${not empty cadastro}">
<<<<<<< HEAD
<<<<<<< HEAD
            <ul>
                <li><a href="/listaAnel">Aneis</a></li>
                <li><a href="/listaColar">Colares</a></li>
                <li><a href="/listaPulseira">Pulseiras</a></li>
                <li><a href="/listaCliente">Clientes</a></li>
                <li><a href="/listaPedido">Pedidos</a></li>
                <li><a href="/listaProduto">Produtos</a></li>
                <c:if test="${cadastro.administrador}">
                    <li><a href="/listadecadastros">Lista</a></li>
                </c:if>
                <li><a href="/logout">Logout</a></li>
            </ul>
        </c:if>
        <c:if test="${empty fn:trim(cadastro)}">
            <ul>
                <li><a href="/login">Login</a></li>
                <li><a href="/cadastro">Cadastrar</a></li>
            </ul>
        </c:if>
=======
        <ul>
            <li><a href="/listaAnel">Aneis</a></li>
            <li><a href="/listaColar">Colares</a></li>
            <li><a href="/listaPulseira">Pulseiras</a></li>
            <li><a href="/listaCliente">Clientes</a></li>
            <li><a href="/listaProduto">Produtos</a></li>
            </c:if>
            <c:if test="${empty fn:trim(cadastro)}">
                <li><a href="/login">Login</a></li>
                <li><a href="/cadastro">Cadastrar</a></li>
=======
        <ul>
            <li><a href="/listaAnel">Aneis</a></li>
            <li><a href="/listaColar">Colares</a></li>
            <li><a href="/listaPulseira">Pulseiras</a></li>
            <li><a href="/listaCliente">Clientes</a></li>
            <li><a href="/listaProduto">Produtos</a></li>
            </c:if>
            <c:if test="${empty fn:trim(cadastro)}">
                <li><a href="/login">Login</a></li>
                <li><a href="/cadastro">Cadastrar</a></li>
>>>>>>> parent of dd246f7 (commit)
            </c:if>
            <c:if test="${not empty cadastro}">
                <li><a href="/listadecadastros">Lista</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
<<<<<<< HEAD
>>>>>>> parent of dd246f7 (commit)
=======
>>>>>>> parent of dd246f7 (commit)
    </div>
</header>
<div class="maincontent-area">
    <h2 class="section-title">Lista de clientes </h2>
    <div class="container12">
        <c:if test="${empty clientes}">
<<<<<<< HEAD
<<<<<<< HEAD
            <h3>No momento não há nem um cliente cadastrado por você.</h3>
        </c:if>
            <h3>Número de clientes cadastrados por você: ${clientes.size()}.</h3>
=======
            <h3>No momento não há nem um cliente cadastrado.</h3>
        </c:if>
            <h3>Número de clientes cadastrados: ${clientes.size()}.</h3>
>>>>>>> parent of dd246f7 (commit)
=======
            <h3>No momento não há nem um cliente cadastrado.</h3>
        </c:if>
            <h3>Número de clientes cadastrados: ${clientes.size()}.</h3>
>>>>>>> parent of dd246f7 (commit)
        <table>
            <thead>
            <tr>
                <th>id</th>
                <th>E-mail</th>
                <th>Nome</th>
<<<<<<< HEAD
<<<<<<< HEAD
                <th>RG</th>
=======
                <th>CEP</th>
>>>>>>> parent of dd246f7 (commit)
=======
                <th>CEP</th>
>>>>>>> parent of dd246f7 (commit)
                <td><a href="/cadastroCliente">Novo</a></td>
            </tr>
            </thead>
            <tbody>
            <c:if test="${not empty clientes}">
            <c:forEach var="u" items="${clientes}">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.email}</td>
                    <td>${u.nome}</td>
<<<<<<< HEAD
<<<<<<< HEAD
                    <td>${u.rg}</td>
=======
                    <td>${u.cep}</td>
>>>>>>> parent of dd246f7 (commit)
=======
                    <td>${u.cep}</td>
>>>>>>> parent of dd246f7 (commit)
                    <td><a href="/cliente/${u.id}/apagarCliente">excluir</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>
    </div>
</div>
</body>

</html>
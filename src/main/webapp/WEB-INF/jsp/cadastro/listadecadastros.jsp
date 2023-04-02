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
    <title>Lista de cadastros</title>
</head>
<body>
<header>
    <div class="containerlogo">
        <a href="/"><img src="logo.png" class="logoimg"></a>
    </div>
    <div class="menu">
        <c:if test="${not empty cadastro}">
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
            </c:if>
            <c:if test="${not empty cadastro}">
                <li><a href="/listadecadastros">Lista</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
    </div>
</header>
<div class="maincontent-area">
    <h2 class="section-title">Lista de Cadastrados</h2>
    <div class="container12">
        <c:if test="${empty cadastros}">
            <h3>No momento n�o h� nem um usu�rio cadastrado.</h3>
        </c:if>
            <h3>N�mero de usu�rios cadastrados: ${cadastros.size()}.</h3>
        <table>
            <thead>
            <tr>
                <th>id</th>
                <th>E-mail</th>
                <th>Nome</th>
                <th>Senha</th>
                <th>Idade</th>
                <th>Excluir</th>
                <td><a href="/cadastrologado">Novo</a></td>
            </tr>
            </thead>
            <tbody>
            <c:if test="${not empty cadastros}">
            <c:forEach var="u" items="${cadastros}">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.email}</td>
                    <td>${u.nome}</td>
                    <td>${u.senha}</td>
                    <td>${u.idade}</td>
                    <td><a href="/cadastro/${u.id}/apagar">excluir</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </c:if>
    </div>
</div>
</body>

</html>
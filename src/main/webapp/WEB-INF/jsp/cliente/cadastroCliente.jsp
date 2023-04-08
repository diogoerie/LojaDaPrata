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
    <title>Cadastro cliente</title>
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
=======
        <ul>
            <li><a href="/listaAnel">Aneis</a></li>
            <li><a href="/listaColar">Colares</a></li>
            <li><a href="/listaPulseira">Pulseiras</a></li>
            <li><a href="/listaCliente">Clientes</a></li>
            <li><a href="/listaProduto">Produtos</a></li>
            </c:if>
            <c:if test="${empty fn:trim(cadastro)}">
>>>>>>> parent of dd246f7 (commit)
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
<div id="login">
<<<<<<< HEAD

    <form action="/cliente/novo" method="post" class="card-cadastro">
        <div class="card-header">
            <h2>Cadastrar Cliente</h2>
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
            </c:if>
            <c:if test="${not empty cadastro}">
                <li><a href="/listadecadastros">Lista</a></li>
                <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
    </div>
</header>
<div id="login">
    <form action="/cliente/novo" method="post" class="card-cadastro">
        <div class="card-header">
            <h2>Cadastro cliente</h2>
>>>>>>> parent of dd246f7 (commit)
=======
    <form action="/cliente/novo" method="post" class="card-cadastro">
        <div class="card-header">
            <h2>Cadastro cliente</h2>
>>>>>>> parent of dd246f7 (commit)
        </div>
        <div class="card-content">
            <div class="card-content-area">
                <label>Nome</label>
                <input type="text" name="nome" value="diogo">
            </div>
            <div class="card-content-area">
                <label>E-mail</label>
                <input type="email" name="email" value="diogo@gmail.com">
            </div>
            <div class="card-content-area">
<<<<<<< HEAD
<<<<<<< HEAD
                <label>RG</label>
                <input type="text" name="rg" value="3226215">
            </div>
        </div>
=======
=======
>>>>>>> parent of dd246f7 (commit)
                <label>CEP</label>
                <input type="text" name="cep" value="12312312">
            </div>
        </div>

>>>>>>> parent of dd246f7 (commit)
        <div class="card-footer">
            <button class="button-81" type="submit">Cadastrar</button>
        </div>
    </form>
<<<<<<< HEAD
    <form action="/cep1" class="card-cadastro" method="post">

        <c:import url="/WEB-INF/jsp/endereco/cadastro.jsp"/>
        <button class="button-81" type="submit">Buscar CEP</button>
        <br>
        <br>
    </form>

=======
>>>>>>> parent of dd246f7 (commit)

</div>
<footer>
    <div class="main-footer">
        <div class="footer">
            <a href="/"><img src="logo.png" class="logofooter"></a>
            <p class="copy-right">&copy; 2023 ECommerce. All Rights Reserved. <a href="/" target="_blank">lojadaprata</a>
            </p>
        </div>
    </div>
</footer>
</body>
</html>
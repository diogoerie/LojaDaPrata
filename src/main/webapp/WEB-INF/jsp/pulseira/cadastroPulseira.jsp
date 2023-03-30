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
    <title>Cadastro pulseiras</title>
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
<div id="login">
    <form action="/pulseira/novo" method="post" class="card-cadastro">
        <div class="card-header">
            <h2>Cadastro pulseira</h2>
        </div>
        <div class="card-content">
            <div class="card-content-area">
                <label>Modelo</label>
                <input type="text" name="modelo" value="Pulseira banhada">
            </div>
            <div class="card-content-area">
                <div class="card-content-area">
                    <label>Male�vel</label>
                    <input type="text" name="maleavel" value="true">
                </div>
                <label>Prendedor</label>
                <input type="text" name="prendedor" value="true">
            </div>
            <div class="card-content-area">
                <label>Tamanho</label>
                <input type="text" name="tamanho" value="15">
            </div>
            <div class="card-content-area">
                <label>Nome Produto</label>
                <input type="text" name="nomeProduto" value="Pulseira banhada">
            </div>
            <div class="card-content-area">
                <label>Codigo Produto</label>
                <input type="text" name="codigoProduto" value="10">
            </div>
            <div class="card-content-area">
                <label>Quantidade</label>
                <input type="text" name="quantidade" value="1">
            </div>
            <div class="card-content-area">
                <label>Pre�o</label>
                <input type="text" name="preco" value="35">
            </div>
        </div>
        <div class="card-footer">
            <button class="button-81" type="submit">Cadastrar</button>
        </div>
    </form>
</div>
<footer>
    <div class="main-footer">
        <div class="footer">
            <a href="/"><img src="logo.png" class="logofooter"></a>
            <p class="copy-right">&copy; 2023 ECommerce. All Rights Reserved. <a href="/"
                                                                                 target="_blank">lojadaprata</a>
            </p>
        </div>
    </div>
</footer>
</body>
</html>

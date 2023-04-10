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
    <link rel="stylesheet" href="style.less">
    <title>Cadastro de produto</title>
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
    </div>
</header>
<div id="login">
    <form action="/anel/novo" method="post" class="card-cadastro">
        <div class="card-header">
            <h2>Cadastro anel</h2>
        </div>
        <div class="card-content">
            <div class="card-content-area">
                <label>Nome Produto</label>
                <input type="text" name="nomeProduto" value="Anel Cravejado">
            </div>
            <div class="card-content-area">
                <label>Modelo</label>
                <input type="text" name="modelo" value="Anel de brilhantes">
            </div>
            <div class="card-content-area">
                <div class="card-content-area">
                    <label>Sob Encomenda</label>
                    <input type="text" name="sobEncomenda" value="true">
                </div>
                <label>Diametro</label>
                <input type="text" name="diametro" value="15">
            </div>
            <div class="card-content-area">
                <label>Cravejado</label>
                <input type="text" name="cravejado" value="true">
            </div>
            <div class="card-content-area">
                <label>Codigo Produto</label>
                <input type="text" name="codigoProduto" value="30">
            </div>
            <div class="card-content-area">
                <label>Quantidade</label>
                <input type="text" name="quantidade" value="1">
            </div>
            <div class="card-content-area">
                <label>Preço</label>
                <input type="text" name="preco" value="30">
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
            <p class="copy-right">&copy; 2023 ECommerce. All Rights Reserved. <a href="/" target="_blank">lojadaprata</a>
            </p>
        </div>
    </div>
</footer>
</body>
</html>

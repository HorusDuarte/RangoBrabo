
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>   
        <div style="background:#FD8121 !important" class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4" style="color: #FCFCFC">Rango Bravo</h1>
            </div>
        </div>
        <div class="cotainer">
            <h1>Consulta de Estoque</h1>
            <hr>
            <c:if test="${msgSucess == true}">
                <div class="alert-success" role="alert" style="font-size: 25px"><strong>Estoque Cadastrado com Sucesso</strong></div>
            </c:if>
            <c:if test="${msgAtualiza == true}">
                <div class="alert-success" role="alert" style="font-size: 25px"><strong>Estoque Atualizado com Sucesso</strong></div>
            </c:if>
            <br>
            <table class="table table-bordered">
                <tr>
                    <th class="text-center">Id</th>
                    <th class="text-center">Descrição</th>
                    <th class="text-center">Filial</th>
                    <th class="text-center" colspan="2">Ação</th>
                </tr>
                <c:forEach var="cat" items="${consulta}" >
                    <tr>
                        <td class="text-center"><c:out value="${cat.id}"/></td>
                        <td class="text-center"><c:out value="${cat.descricao}"/></td>
                        <td class="text-center"><c:out value="${cat.filial}"/></td>
                    <form method="get" action="${pageContext.request.contextPath}/atualizar-estoque">
                        <td class="text-center"><button class="btn btn-warning btn-sm" type="submit" value="${cat.id}" name="id">Atualizar</td>
                    </form>
                    <form method="get" action="${pageContext.request.contextPath}/excluir-estoque">
                        <td class="text-center"><button class="btn btn-danger btn-sm" type="submit" value="${cat.id}" name="id">Excluir</td>
                    </form>   
                    </tr>
                </c:forEach>
            </table>
            <input class="btn btn-info btn-sm" type="submit" value="Pagina inicial" OnClick="parent.location.href = 'homePage.jsp'">
        </div>
    </body>
</html>

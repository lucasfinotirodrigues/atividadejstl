<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="jc" %>
<%
    String tarefa = "";
    if(request.getParameter("tarefa") != null) {
        tarefa = request.getParameter("tarefa");
    }
    if(session.getAttribute("tarefas") == null){
        session.setAttribute("tarefas", tarefa);
    } else {
        String tarefas = session.getAttribute("tarefas").toString();
        tarefas += (tarefas != "") ? (";" + terefa) : tarefa;
        session.setAttribute("tarefas", tarefas);
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercício - 7</title>
</head>
<body>
    <form action="index.jsp" method="post">
        <input type="text" name="tarefa" id="">
        <button type="submit">Salvar</button>
    </form>
    <jc:choose>
        <jc:when test="$empty tarefas">
            <em>Sem tarefas</em>
        </jc:when>
        <jc:otherwise>
            <ul>
                <jc:forTokens items="tarefas" delims=";" var="item">
                 <li>${item}</li>
                </jc:forTokens>
            </ul>
        </jc:otherwise>
    </jc:choose>

</body>
</html>
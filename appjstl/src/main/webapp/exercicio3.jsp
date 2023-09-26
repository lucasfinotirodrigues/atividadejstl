<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%
    int numA = 1;
    int numB = 1;
    int count = 0;
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercicio - 3</title>
</head>
<body>
    <h1>Exercício - 3</h1>
    <%
    do {
        if((count++) >= 2) {
            int result = numA + numB;
            numA = numB;
            numB = result;
        }
        out.print(numB);
        out.print("<br />");
    } while(count < 10);
    %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Operações Matemáticas</h1>
    
   
    <%
        if (request.getMethod().equals("POST")) {
            int numero1 = Integer.parseInt(request.getParameter("numero1"));
            int numero2 = Integer.parseInt(request.getParameter("numero2"));
            
            int soma = numero1 + numero2;
            int subtracao = numero1 - numero2;
            int multiplicacao = numero1 * numero2;
            double divisao = (double) numero1 / numero2;
            int resto = numero1 % numero2;
    %>
    
    <p>Número 1: <%= numero1 %></p>
    <p>Número 2: <%= numero2 %></p>
    <p>Soma: <%= soma %></p>
    <p>Subtração: <%= subtracao %></p>
    <p>Multiplicação: <%= multiplicacao %></p>
    <p>Divisão: <%= divisao %></p>
    <p>Resto da Divisão Inteira: <%= resto %></p>
    
    <%
        } else {
    %>
    
    <form action="Index.jsp" method="post">
        <label for="numero1">Número 1:</label>
        <input type="text" id="numero1" name="numero1" required><br><br>

        <label for="numero2">Número 2:</label>
        <input type="text" id="numero2" name="numero2" required><br><br>

        <input type="submit" value="Calcular">
    </form>
    
    <%
        }
    %>
</body>
</html>
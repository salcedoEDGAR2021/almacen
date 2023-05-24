<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    <body>
        <c:if test="${producto.id==0}">
            <h1>Nuevo Registro</h1>
        </c:if>
        <c:if test="${producto.id!=0}">
            <h1>Editar Registro</h1>
        </c:if>
        <form action="Inicio" method="post">
            <input type="hidden" name="id" value="${producto.id}">
            <table border="0">
                <tr>
                    <td>Descripción:</td>
                    <td><input type="text" name="descripcion" value="${producto.descripcion}"></td>
                </tr>
                <tr>
                    <td>Cantidad:</td>
                    <td><input type="number" name="cantidad" value="${producto.cantidad}"></td>
                </tr>
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="precio" value="${producto.precio}"></td>
                </tr>
                <tr>
                    <td>Categoria:</td>
                    <td><input type="text" name="categoria" value="${producto.categoria}"></td>
                </tr>
                <tr>
                    <td></th>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

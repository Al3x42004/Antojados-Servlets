<%-- 
    Document   : carrito
    Created on : 17/07/2026, 12:11:32 p. m.
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras - Antojados</title>
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>

    <!-- INCLUYE EL NAVBAR Y SIDEBAR DINÁMICO -->
    <jsp:include page="navbar.jsp" />

    <div class="container" style="margin-top: 40px; margin-bottom: 40px;">
        <h3 class="brown-text text-darken-3">Tu carrito 🛒</h3>
        <p class="grey-text text-darken-1">Aquí puedes ver y gestionar los productos que has seleccionado.</p>
        
        <div class="card-panel white z-depth-1" style="margin-top: 20px; padding: 25px;">
            <!-- Tabla Estructurada -->
            <table class="striped responsive-table">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th class="right-align">Precio</th>
                    </tr>
                </thead>
                <tbody id="lista">
                    
                </tbody>
            </table>

            <div class="divider" style="margin: 20px 0;"></div>

            <div class="row" style="margin-bottom: 0; display: flex; align-items: center; justify-content: space-between; flex-wrap: wrap;">
                <h4 id="total" class="brown-text text-darken-2" style="margin: 10px 0;">Total: $0</h4>
                <button class="btn red waves-effect waves-light" onclick="vaciar()" style="border-radius: 4px;">
                    <i class="material-icons left">delete_sweep</i>Vaciar carrito
                </button>
            </div>
        </div>
    </div>

    <!-- JAVASCRIPT -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var elems = document.querySelectorAll('.sidenav');
            M.Sidenav.init(elems);
        });

        let carrito = JSON.parse(localStorage.getItem("carrito")) || [];
        let lista = document.getElementById("lista");
        let total = 0;

        if (carrito.length === 0) {
            lista.innerHTML = '<tr><td colspan="2" class="center-align grey-text" style="padding: 30px 0;">Tu carrito está vacío. ¡Ve a la pestaña de productos para antojarte!</td></tr>';
        } else {
            carrito.forEach(p => {
                let nombreProducto = p.nombre || p.name || p.producto || "Producto Seleccionado";
                let precioProducto = p.precio || p.price || 0;

                lista.innerHTML += '<tr>' +
                    '<td><strong>' + nombreProducto + '</strong></td>' +
                    '<td class="right-align">$' + Number(precioProducto).toLocaleString() + '</td>' +
                '</tr>';

                total += Number(precioProducto);
            });
        }

        document.getElementById("total").innerText = "Total: $" + total.toLocaleString();

        function vaciar(){
            localStorage.removeItem("carrito");
            location.reload();
        }
    </script>

</body>
</html>
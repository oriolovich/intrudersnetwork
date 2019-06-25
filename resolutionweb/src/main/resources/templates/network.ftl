<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="es">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="container">
        <#if network ??>
            <h5>Totes les xarxes</h5>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">domain</th>
                    <th scope="col">Description</th>
                    <th scope="col">ip</th>
                    <th scope="col">Actualiza</th>
                    <th scope="col">Elimina</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${network.id}</td>
                    <td>${network.domain}</td>
                    <td>${network.description}</td>
                    <td>${network.ip}</td>
                    <td><a href="/network/${network.id}/update">Editar</a></td>
                    <td><a href="/network/delete/${network.id}">Eliminar</a></td>
                </tr>
                </tbody>
            </table>
        <#else><h2>Xarxa no trobada</h2></#if>
</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>
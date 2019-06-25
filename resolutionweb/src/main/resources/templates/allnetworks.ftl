<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="cat">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="container">
    <h5>Totes les ip's</h5>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">dns</th>
            <th scope="col">Descripció</th>
            <th scope="col">adreça ip</th>
            <th scope="col">Actualiza</th>
            <th scope="col">Elimina</th>
        </tr>
        </thead>
    <#list model["network"] as network>
  	<tr>
        <td>${network.id}</td>
        <td>${network.dns}</td>
        <td>${network.descripcio}</td>
        <td>${network.adreca_ip}</td>
        <td><a href="/network/${network.id}/update">Edita</a></td>
        <td><a href="/network/delete/${network.id}">Elimina</a></td>
    </tr>
    </#list>
    </table>

</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>
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
            <th scope="col">domain</th>
            <th scope="col">Description</th>
            <th scope="col">ip</th>
            <th scope="col">Actualiza</th>
            <th scope="col">Elimina</th>
        </tr>
        </thead>
    <#list model["network"] as network>
  	<tr>
        <td>${network.id}</td>
        <td>${network.domain}</td>
        <td>${network.description}</td>
        <td>${network.ip}</td>
        <td><a href="/network/${network.id}/update">Edita</a></td>
        <td><a href="/network/delete/${network.id}">Elimina</a></td>
    </tr>
    </#list>
    </table>

</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>
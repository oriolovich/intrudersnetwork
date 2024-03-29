<#import "macro/myMacro.ftl" as holamacro>
<!doctype html>
<html lang="es">
<@holamacro.head></@holamacro.head>
<body>
<@holamacro.navbar></@holamacro.navbar>
<div class="d-flex justify-content-center">
    <div class="page-wrap d-flex flex-row align-items-center" style="margin-top: 40px">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 text-center">
                    <span class="display-1 d-block">404</span>
                    <div class="mb-4 lead">No se encontró la página que busca.</div>
                    <a href="/" class="btn btn-link">Volver a inicio</a>
                </div>
            </div>
        </div>
    </div>
</div>
<@holamacro.optional></@holamacro.optional>
</body>
</html>
<!-- Definicao do documento JSP (codificando a leitura e a renderizacao da pagina para UTF-8 e permitindo a injecao de variaveis de interpolacao) -->
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!--  -->
<!-- Injecao de metodos uteis sankhya na pagina (com o prefixo snk) -->
    <%@ taglib prefix="snk" uri="/WEB-INF/tld/sankhyaUtil.tld" %>
<!--  -->

<!DOCTYPE html>
<html>
    <head>
        <!-- Inicializacao dos componentes sankhya injetados -->
            <snk:load />
        <!--  -->

        <script>
            /* Exportamos o metodo injetado do sankhya para um contexto global onde poderemos utilizar em outros arquivos Javascript */
                var abrirNivel = openLevel;
            /*  */
        </script>

        <!-- Injecao do arquivo JS que contera a implementacao adicional com o carregamento do arquivo apos a renderizacao da pagina -->
            <script defer src="${BASE_FOLDER}/script.js"></script>
        <!--  -->
            <link rel="stylesheet" type="text/css" href="${BASE_FOLDER}/style.css">

    </head>

    <body>
        <div class="box">
            <h2>Escolha uma opção:</h2>
        <!-- Definimos o componente que contera o evento implementado em um arquivo JS externo -->
            <a class="button" href="#" onclick="abrirNivelImplementadoExternamente ('08W')"> Ordem de Carregamento </a>
            <a class="button" href="#" onclick="abrirNivelImplementadoExternamente ('09W')"> Sequência de Carregamento </a>
        </div>
    </body>

</html>
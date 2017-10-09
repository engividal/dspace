<%--
  Created by IntelliJ IDEA.
  User: fernando
  Date: 22/09/17
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>


<html>
<head>
    <title>Ficha Catalográfica</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--<link rel="stylesheet" href="<%= request.getContextPath() %>/code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
    <link rel="shortcut icon" href="<%= request.getContextPath() %>/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/jquery-ui-1.10.3.custom/redmond/jquery-ui-1.10.3.custom.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap-theme.min.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/dspace-theme.css" type="text/css" />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/customDspace.css" type="text/css" />
    <%--<link rel="stylesheet" href="<%= request.getContextPath() %>/util/css/bootstrap.css">--%>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/util/css/CustomForm.css">

</head>
<body>
<header class="navbar navbar-inverse">
    <div class="container">
        <%@
                include file="layout/navbar-default.jsp"
        %>
    </div>
</header>

<div class="container">

    <div class="form-group col-md-12">
        <h1>Criar Ficha Catalográfica</h1>

        <form action="/fichacatalografica/ficha/report" method="post" name="formficha"
              class="form-horizontal formulario" id="formficha">

            <div class="form-group prop col-md-12">
                <p class="help-block">Todos os itens com * são obrigatórios</p>
                <p class="help-block">O Código Cutter será gerado automaticamente</p>

            </div>

            <div class="row">
                <div class="col-md-12">
                    <label for="nome">Nome e primeiros sobrenomes*: </label>
                    <div class="value ">
                        <input type="text" name="nome" class="form-control " value="" id="nome"
                               placeholder="Ex. Márcia Andreia Albuquerque da." required>
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">Nome e primeiros sobrenomes. (Ex. Márcia Andreia Albuquerque da. Ex.2.: João de Souza da)</span></label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <label for="sobrenome">Sobrenome*:</label>
                    <div class="value ">
                        <input type="text" name="sobrenome" class="form-control " maxlength="50" value="" id="sobrenome"
                               placeholder="Ex.: Silva Filho, Oliveira Neto" required>
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">Apenas o ùltimo sobrenome. Em caso de parentesco, este deve ser inserido após o último sobrenome (Ex.: Silva Filho, Oliveira Neto)</span></label>
                </div>
            </div>

            <div class="row ">
                <div class="col-md-12">
                    <div class="name">
                        <label for="tituloTrabalho">Título Trabalho*: </label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control" name="tituloTrabalho" value="" id="tituloTrabalho" required>
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">
                    Não deve ser utilizada apenas letras maiúsculas! Utilize letras maiúsculas somente para o início do título, siglas ou nomes próprios.
                </span></label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="name">
                        <label for="subTituloTrabalho">Sub Titulo Trabalho:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control" name="subTituloTrabalho" value=""
                               id="subTituloTrabalho" >
                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">
                                Não deve ser utilizada apenas letras maiúsculas!
                            </span></label>
                </div>
            </div>

            <div class="row">

                <div class="col-md-12">
                    <div class="name">
                        <label for="cursoPrograma">Curso Programa*:</label>
                    </div>
                    <div class="value ">
                        <input class="form-control" name="cursoPrograma" id="cursoPrograma" required>

                    </div>
                    <label for="nome"><span style="font-style:italic;font-size:9px;">
                                Clique na lupa para abrir a janela de opções e digite o nome do curso ou programa.
                            </span></label>
                </div>
            </div>

            <div class="row">

                <div class="col-md-9">
                    <div class="name">

                        <label for="tipoTrabalho">Tipo Trabalho*:</label>
                    </div>
                    <div class="value ">

                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" checked="checked" value="1"> Tese
                        </label>


                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" value="2"> Dissertação
                        </label>


                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" value="3"> TCC(Especialização)
                        </label>


                        <label class="radio-inline">
                            <input type="radio" name="tipoTrabalho" value="4"> TCC(Graduação)
                        </label>


                    </div>
                </div>
            </div>

            <div class="row formTop">
                <div class="col-md-12 orientador campoNome">
                    <div class="name">
                        <label for="nomeOrientador">Nome do Orientador*:</label>
                    </div>

                    <div class="col-md-6 divFloat">
                        <input type="text" class="form-control" name="nomeOrientador[]" maxlength="100" value=""
                               id="nomeOrientador" required>
                    </div>

                    <div class="col-md-2">
                        <button class="btn btn-success orientador_add" type="button">
                            <span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Adicionar mais
                        </button>
                    </div>

                </div>
            </div>

            <div class="row formTop">
                <div class=" col-md-12 nomeCoOrientador">
                    <div class="name">
                        <label for="nomeCoOrientador">Nome Co-Orientador:</label>
                    </div>
                    <div class="col-md-6 divFloat">
                        <input type="text" class="form-control " name="nomeCoOrientador" maxlength="50" value=""
                               id="nomeCoOrientador">
                    </div>
                    <div class="col-md-2">
                        <button class="btn btn-success co-orientador_add" type="button">
                            <span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;Adicionar mais
                        </button>
                    </div>
                </div>
            </div>

            <div class="row formTop">


                <div class="col-md-3">
                    <div class="name">
                        <label for="alturaFolha">Altura Folha*:</label>
                    </div>
                    <div class="value ">
                        <label for="alturaFolha">31</label>
                    </div>
                </div>

                <div class="col-md-1">
                    <div class="name">
                        <label for="ano">Ano*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="ano" maxlength="4" value="" id="ano">
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="name">
                        <label for="ilustracoes">Ilustrações*:</label>
                    </div>
                    <div class="value ">
                        <select name="ilustracoes" class="form-control" id="ilustracoes">
                            <option value="">-Selecione o tipo-</option>
                            <option value="Sem ilustrações">Sem ilustrações</option>
                            <option value="Preto e Branco">Preto e Branco</option>
                            <option value="Colorido">Colorido</option>
                        </select>
                    </div>
                </div>

                <div class="col-md-5">
                    <div class="name">
                        <label for="numeroArabico">Número de páginas (Número Arábico)*:</label>
                    </div>
                    <div class="col-md-2 divFloat">
                        <input type="text" class="form-control " name="numeroArabico" value="" id="numeroArabico">
                    </div>
                </div>


            </div>


            <div class="row formTop">
                <div class="col-md-3">
                    <div class="name">
                        <label title="Não usar fórmulas. Em caso de termo cientifico, utilizar também o nome popular - Ex: Apis mellifera(Abelha)."
                               for="palavraChave1">Palavra-Chave 1*:</label>
                    </div>
                    <div class="value ">
                        <input type="text"
                               title="Não usar fórmulas. Em caso de termo cientifico, utilizar também o nome popular - Ex: Apis mellifera(Abelha)."
                               class="form-control " name="palavraChave1" maxlength="50" value="" id="palavraChave1" required>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave2">Palavra-Chave 2*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave2" maxlength="50" value=""
                               id="palavraChave2" required>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave3">Palavra-Chave 3*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave3" maxlength="50" value=""
                               id="palavraChave3"required>
                    </div>
                </div>
            </div>


            <div class="row formTop">
                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave4">Palavra-Chave 4*:</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave4" maxlength="50" value=""
                               id="palavraChave4">
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="name">
                        <label for="palavraChave5">Palavra-Chave 5</label>
                    </div>
                    <div class="value ">
                        <input type="text" class="form-control " name="palavraChave5" maxlength="50" value=""
                               id="palavraChave5">
                    </div>
                </div>
            </div>

            <div class="row formTop">

                <b>
                    <input type="submit" name="create" class="btn btn-primary button" value="Gerar Ficha Catalográfica"
                           onclick="return confirm('A Ficha gerada deve ser salva em PDF e impressa junto com o trabalho')"
                           id="create">
                </b>

            </div>
        </form>
    </div>
</div>


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="<%= request.getContextPath() %>/util/js/bootstrap.min.js"></script>

<script>
    $(
        function () {
            var listaCurso = [
                "TADS",
                "ENFERMAGEM",
                "ENG. MECANICA"
            ];
            $("#cursoPrograma").autocomplete({
                source: listaCurso
            });
        });

    //    $(document).ready(function(){
    var i=1;
    var x=1;

    $('.orientador_add').click(function(){
        i++;
        $('.campoNome').append('<div id="row'+i+'">' +
            '                   <div  class="col-md-6 divFloat formTop">\n' +
            '                       <input type="text" class="form-control " name="nomeOrientador[]" maxlength="100" value=""' +
            '                                   id="nomeOrientador">\n' +
            '                    </div>' +
            '                    <div class="col-md-2 formTop">' +
            '                       <button type="button" name="remove" id="'+i+'" ' +
            '                               class="btn btn-danger btn_remove">X</button>' +
            '                    </div>' +
            '                   </div>');
    });

    $('.co-orientador_add').click(function(){
        x++;
        $('.nomeCoOrientador').append('<div id="row'+x+'">' +
            '                   <div  class="col-md-6 divFloat formTop">\n' +
            '                       <input type="text" class="form-control " name="nomeCoOrientador[]" maxlength="100" value=""' +
            '                                   id="nomeCoOrientador">\n' +
            '                    </div>' +
            '                    <div class="col-md-2 formTop">' +
            '                       <button type="button" name="remove" id="'+x+'" ' +
            '                               class="btn btn-danger btn_remove">X</button>' +
            '                    </div>' +
            '                   </div>');
    });

    $(document).on('click', '.btn_remove', function(){
        var button_id = $(this).attr("id");
        $('#row'+button_id+'').remove();

    });

    //        $('#submit').click(function(){
    //            $.ajax({
    //                url:"name.php",
    //                method:"POST",
    //                data:$('#add_name').serialize(),
    //                success:function(data)
    //                {
    //                    alert(data);
    //                    $('#add_name')[0].reset();
    //                }
    //            });
    //        });
    //    });

</script>


<div class = "navbar navbar-default navbar-fixed-bottom" role = "navigation">
    <div class = "container">
        <a href="http://www3.uea.edu.br/">
            <img class="img-logo-button" src="<%= request.getContextPath() %>/image/logo-uea.png"
                 alt="Logo UEA" />
        </a>
        <span class="pull-left text-uea">
                    UNIVERSIDADE DO ESTADO DO AMAZONAS<br>
                    Sistema Integrado de Bibliotecas SIB/UEA<br>
                    +55 92 98410-6272<br>
                    bibliotecacentral@uea.edu.br

                </span>
        <div id="footer_feedback" class="pull-right">
            <img class ="img-ibict-logo" src="<%= request.getContextPath() %>/image/bannerIbict.png"
                 alt="Logo Ibict"/>
        </div>
    </div>
</div>
</body>
</html>

<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIERRACEL</title>
  </head>
  <body>
    <header>
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand cargarhome" href="#">SIᕮᖇᖇᗩᑕᕮᒪ</a>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
              <li><a href="#" class="cargarcaracteristicas">Características detalladas de los productos</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="#" class="cargarlogin">Ingresar</a></li>
              <li><a href="#" class="cargarcontacto">Contactanos</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <div class="row">
      <div class="col-md-12 col-xs-12">
        <div class="contenedor">
          <form action="filter" method="POST">
            <select name="afiltrar" class="form-control filter">
              <option value="" selected disabled hidden>Ver por marca</option>
              {foreach from=$marcas item=marca}
              <option value="{$marca['id_marca']}">{$marca['nombre']}</option>
              {/foreach}
            </select>
            <button class="btn btn-lg btn-primary btn-block dofilter" type="submit">Filtrar</button>
          </form>
          <table class="table table-striped">
              <thead>
                <tr>
                  <th>Fotos</th>
                  <th>Modelo</th>
                </tr>
              </thead>
              <tbody>
                {foreach from=$celulares item=celular}
                <tr>
                  {if $celular['id_marca'] == $id_marca}
                    <td>
                      {foreach from=$celular['imagenes'] item=imagen}
                        <figure>
                          <a class="vercaracteristicascelular" href="#" id="{$celular['id_celular']}"><img class="fotocelular" src="{$imagen['ruta']}" alt="Imagen del celular {$celular['modelo']}"></a>
                        </figure>
                      {/foreach}
                    </td>
                    <td>
                      {$celular['modelo']}
                    </td>
                  {/if}  
                </tr>
              {/foreach}
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <footer>
      <div class="row">
        <div class="col-md-12 col-xs-12">
          <p class="copyright">Copyright© 1995-2017 SIERRACEL Todos los derechos reservados.</p>
          <a class="linkfooter" href="">Privacidad</a>
          <a class="linkfooter" href="">Legales</a>
          <p class="telefono">Tel.: 0249154000000</p>
        </div>      
      </div>
    </footer>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/mustache.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/partialrender.js"></script>
    <script type="text/javascript" src="js/rest.js"></script>
  </body>
</html>
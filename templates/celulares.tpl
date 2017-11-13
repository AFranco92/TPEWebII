<h2>{$titulo}</h2>
<p>Se observan los celulares cargados hasta el momento:</p>
<div class="row">
<div class="table-responsive col-md-12 col-xs-12">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Fotos</th>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Características</th>
        <th>Precio</th>
        <th><a class="boton addCelular" href="#"><button class="btn btn-lg btn-success btn-block" type="submit">Agregar</button></a></th>
      </tr>
    </thead>
    <tbody>
      {foreach from=$celulares item=celular}
      <tr>
        <td>
          {foreach from=$celular['imagenes'] item=imagen}
          <figure>
            <img class="fotocelular" src="{$imagen['ruta']}" alt="Imagen del celular {$celular['modelo']}">
          </figure> 
          <a class="boton delete" href="deleteImagen/{$imagen['id_imagen']}"><button class="btn btn-md btn-danger btn-block" type="submit">x</button></a>
          {/foreach}
        </td>
        {if $celular['sinstock']}
        {foreach from=$marcas item=marca}
        {if $celular['id_marca'] == $marca['id_marca']}
        <td>
          {$marca['nombre']}
        </td>
        {/if}
        {/foreach}
        <td>
          {$celular['modelo']}
        </td>
        <td>
          {$celular['caracteristicas']}
        </td>
        <td>
          ${$celular['precio']}<p class="stock">Sin stock</p>
        </td>
        {else}
        {foreach from=$marcas item=marca}
        {if $celular['id_marca'] == $marca['id_marca']}
        <td>
          {$marca['nombre']}
        </td>
        {/if}
        {/foreach}
        <td>
          {$celular['modelo']}
        </td>
        <td>
          {$celular['caracteristicas']}
        </td>
        <td>
          ${$celular['precio']}
        </td>
        {/if}
        <td>
            <form action="postImageCelular/{$celular['id_celular']}" method="POST" enctype="multipart/form-data">
                <input type="file" id="imagenes" name="imagenes[]" multiple>
                <input type="submit" name="">
            </form>
        </td>
        <td>
          <a class="boton edit" href="setNoStock/{$celular['id_celular']}"><button class="btn btn-lg btn-warning btn-block" type="submit">Sin stock</button></a>
        </td>
        <td>
          <a class="boton delete" href="deleteCelular/{$celular['id_celular']}"><button class="btn btn-lg btn-danger btn-block" type="submit">X</button></a>
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>
</div>
</div>
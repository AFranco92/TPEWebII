<table class="table table-striped">
  <thead>
      <tr>
          <th>Fotos</th>
          <th>Marca</th>
          <th>Modelo</th>
          <th>Características</th>
          <th>Precio</th>
          <th>Comentarios</th>
      </tr>
  </thead>
  <tbody> 
      <tr class="comentariousuario" id="{$celular['id_celular']}">
          <td>
            {foreach from=$imagenes item=imagen}
                {if $celular['id_celular'] == $imagen['fk_id_celular']}
                  <figure>
                    <img class="fotocelularelegido" src="{$imagen['ruta']}" alt="Imagen del celular {$celular['modelo']}">
                  </figure>
                {/if}  
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
      </tr>
  </tbody>
</table>
<p class="aviso">¡Para comentar hay que estar logueado!</p>
<div class="row">
  <div class="col-md-5">
    {foreach from=$usuarios item=usuario}
    {if $usuario['online'] == 1}
    <h2>Comentar</h2>
      <p>Comentando como: <span class="user">{$usuario['usuario']}</span></p>
      <form class="comentar" method="POST">
        <select name="fk_puntaje" class="form-control puntaje">
          <option value="" selected disabled hidden>Puntaje</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select>
        <input class="form-control fk_id_celular" type="hidden" name="fk_id_celular" placeholder="Id celular" value="{$celular['id_celular']}">
        <input class="form-control fk_id_usuario" type="hidden" name="fk_id_usuario" placeholder="Id usuario" value="{$usuario['id_usuario']}">
        <input class="form-control fk_usuario" type="hidden" name="fk_usuario" placeholder="Usuario" value="{$usuario['usuario']}">
        <textarea class="form-control textocomentario" cols="10" rows="5" name="textocomentario" placeholder="Comentario"></textarea>
        <button class="btn btn-lg btn-primary btn-block comment" type="submit">Comentar</button>
      </form>
    {/if}
    {/foreach}
  </div>  
</div>    
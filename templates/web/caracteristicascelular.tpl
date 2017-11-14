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
              <figure>
                  <img class="fotocelular" src="{$imagen['ruta']}" alt="Imagen del celular {$celular['modelo']}">
              </figure>
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
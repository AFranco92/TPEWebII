<h2>{$titulo}</h2>
<p>Se observan los celulares cargados hasta el momento:</p>
<div class="row">
<div class="table-responsive col-md-12 col-xs-12">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Modelo</th>
        <th>Características</th>
        <th>Precio</th>
        <th><a class="boton addCelular" href="#">[+]</a></th>
      </tr>
    </thead>
    <tbody>
      {foreach from=$celulares item=celular}
      <tr>
        {if $celular['stock']}
        <td>
          <strong>{$celular['modelo']}</strong>
        </td>
        <td>
          {$celular['caracteristicas']}
        </td>
        <td>
          {$celular['precio']}<p class="stock">Sin stock</p>
        </td>
        {else}
        <td>
          <strong>{$celular['modelo']}</strong>
        </td>
        <td>
          {$celular['caracteristicas']}
        </td>
        <td>
          {$celular['precio']}
        </td>
        {/if}
        <td>
          <a class="boton edit" href="setNoStock/{$celular['id_celular']}">[Sin stock]</a>
        </td>
        <td>
          <a class="boton delete" href="deleteCelular/{$celular['id_celular']}">[x]</a>
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>
</div>
</div>
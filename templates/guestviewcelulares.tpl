<h2>{$titulo}</h2>
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
        <th>Modelo</th>
        <th>Características</th>
        <th>Precio</th>
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
      </tr>
    {/foreach}
  </tbody>
</table>
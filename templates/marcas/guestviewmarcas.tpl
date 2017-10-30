<h2>Marcas</h2>       
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Descripción</th>
      </tr>
    </thead>
    <tbody>
      {foreach from=$marcas item=marca}
      <tr>
        <td>
          {$marca['nombre']}
        </td>
        <td>
          {$marca['descripcion']}
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>
<h2>Comentar</h2>
<form action="comentar" method="POST">
    <select name="comentar" class="form-control comment">
        <option value="" selected disabled hidden>Elegir</option>
        {foreach from=$celulares item=celular}
        <option value="{$celular['id_celular']}">{$celular['modelo']}</option>
        {/foreach}
    </select>
    <textarea class="form-control comentario" cols="10" rows="5"></textarea>
    <button class="btn btn-lg btn-primary btn-block comment" type="submit">Comentar</button>
</form>
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
{foreach from=$usuarios item=usuario}
{if $usuario['administrador'] == 1}
  <p>Comentando como: <span class="writer">{$usuario['usuario']}</span></p>
{/if}
{/foreach}
<form class="comentar">
    <select name="celularacomentar" class="form-control comment">
        <option value="" selected disabled hidden>Celular</option>
        {foreach from=$celulares item=celular}
        <option value="{$celular['id_celular']}">{$celular['modelo']}</option>
        {/foreach}
    </select>
    <select name="puntajecelular" class="form-control puntaje">
      <option value="" selected disabled hidden>Puntaje</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
    </select>
    <textarea class="form-control comentario" cols="10" rows="5"></textarea>
    <button class="btn btn-lg btn-primary btn-block comment" type="submit">Comentar</button>
</form>
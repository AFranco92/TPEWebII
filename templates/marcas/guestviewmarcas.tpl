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
{if $usuario['online'] == 1}
  <p>Comentando como: <span class="writer">{$usuario['usuario']}</span></p>
{/if}
{/foreach}
<form class="comentar">
    <select name="fk_id_celular" class="form-control comment fk_id_celular">
        <option value="" selected disabled hidden>Celular</option>
        {foreach from=$celulares item=celular}
        <option value="{$celular['id_celular']}">{$celular['modelo']}</option>
        {/foreach}
    {if $usuario['online'] == 1}
    <input class="form-control fk_id_usuario" type="text" name="fk_id_usuario" placeholder="Id usuario" value="{$usuario['id_usuario']}">
    <input class="form-control fk_usuario" type="text" name="fk_usuario" placeholder="Usuario" value="{$usuario['usuario']}">
    {/if}
    <textarea class="form-control textocomentario" cols="10" rows="5" name="textocomentario"></textarea>
    <button class="btn btn-lg btn-primary btn-block comment" type="submit">Comentar</button>
</form>
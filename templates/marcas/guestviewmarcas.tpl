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
          <strong>{$marca['nombre']}</strong>
        </td>
        <td>
          {$marca['descripcion']}
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>
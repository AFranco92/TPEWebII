<h2>Marcas</h2>
<p>Se observan todas las marcas:</p>
<div class="row">
<div class="table-responsive col-md-12 col-xs-12">          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Nombre</th>
        <th>Descripción</th>
        <th><a class="boton addMarca" href="#"><button class="btn btn-lg btn-success btn-block" type="submit">Agregar</button></a></th>
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
        <td>
          <a class="boton delete" href="deleteMarca/{$marca['id_marca']}"><button class="btn btn-lg btn-danger btn-block" type="submit">X</button></a>
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>
</div>
</div>
<div class="row">
	<div class="col-xs-12 col-md-4 col-md-offset-4">
    {if isset($error) }
      <div class="alert alert-danger" role="alert">{$error}</div>
    {/if}
      	<form action="setCelular" method="POST" class="create form-signin">
          <select name="id_marca" class="form-control">
            <option value="" selected disabled hidden>Seleccionar marca</option>
            {foreach from=$marcas item=marca}
            <option value="{$marca['id_marca']}">{$marca['nombre']}</option>
            {/foreach}
          </select>
        	<input type="text" name="modelo" id="inputText" class="form-control" placeholder="Modelo" required autofocus>
          <textarea name="caracteristicas" id="inputText" class="form-control" placeholder="Características" required autofocus></textarea>
        	<input type="number" name="precio" id="inputNumber" class="form-control" placeholder="Precio" required autofocus>
          <input type="file" name="uploadImage">
          Sin stock <input type="checkbox" id="stock" name="stock" value="1">
        	<button class="btn btn-lg btn-primary btn-block add" type="submit">Cargar</button>
      	</form>
    </div>
</div>
<div class="row">
	<div class="col-xs-12 col-md-4 col-md-offset-4">
    {if isset($error) }
      <div class="alert alert-danger" role="alert">{$error}</div>
    {/if}
      	<form action="setMarca" method="POST" class="create form-signin">
        	<input type="text" name="nombre" id="inputText" class="form-control" placeholder="Nombre" required autofocus>
          <input type="text" name="descripcion" id="inputText" class="form-control" placeholder="Descripcion" required autofocus>
        	<button class="btn btn-lg btn-primary btn-block" type="submit">Cargar</button>
      	</form>
    </div>
</div>
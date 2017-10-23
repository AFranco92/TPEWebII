<h2 class="titulologin">Ingresar</h2>
<div class="row login">
    <div class="col-xs-12 col-md-4 col-md-offset-4">
        <form action='checkUser' method="POST" class="ingreso form-signin">
            <label for="inputText" class="sr-only">Usuario</label>
            <input type="text" name="usuario" id="inputText" class="form-control" placeholder="Usuario" required autofocus>
            <label for="inputPassword" class="sr-only">Contraseña</label>
            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Contraseña"     required>
            {if !empty($error) }
            <div class="alert alert-danger" role="alert">{$error}</div>
            {/if}
            <button class="btn btn-lg btn-success btn-block" type="submit">Ingresar</button>
        </form>
    </div>
</div>
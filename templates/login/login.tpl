<!-- <div class="row login">
    <div class="col-xs-12 col-md-4 col-md-offset-4">
        <form action='checkUser' method="POST" class="ingreso form-signin">
            <label for="inputText" class="sr-only">Usuario</label>
            <input type="text" name="usuario" id="inputText" class="form-control" placeholder="Usuario" required autofocus>
            <label for="inputPassword" class="sr-only">Contraseña</label>
            <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Contraseña"     required>
            {if !empty($error) }
            <div class="alert alert-danger" role="alert">{$error}</div>
            {/if}
            <a class="registrarse" href="">Registrarse</a>
            <button class="btn btn-lg btn-success btn-block" type="submit">Ingresar</button>
        </form>
    </div>
</div> -->
<div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-login">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <a href="#" class="active" id="login-form-link">Ingresar</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="#" id="register-form-link">Registrarse</a>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="login-form" action="checkUser" method="POST" role="form" style="display: block;">
                                    <div class="form-group">
                                        <input type="text" name="usuario" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="" required autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Contraseña">
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                        <label for="remember"> Recordarme</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Ingresar">
                                            </div>
                                        </div>
                                    </div>
                                    {if !empty($error) }
                                        <div class="alert alert-danger" role="alert">{$error}</div>
                                    {/if}
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="text-center">
                                                    <a href="#" tabindex="5" class="forgot-password">¿Olvidó su contraseña?</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form id="register-form" action="register" method="POST" role="form" style="display: none;">
                                    <div class="form-group">
                                        <input type="text" name="usuariotoregistrar" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="emailtoregister" id="email" tabindex="1" class="form-control" placeholder="Email" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="passwordtoregister" id="password" tabindex="2" class="form-control" placeholder="Contraseña">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirmar contraseña">
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Registrarse">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
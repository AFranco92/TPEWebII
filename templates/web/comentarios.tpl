<div class="panel panel-default">
  <div class="panel-heading">
    <h2 class="panel-title usuario"></h2>
    <h5 class="celular"></h4>
  </div>
  <div class="panel-body">
  <section class="comentariousuario">
  </section>
  </div>
</div>
<div class="row">
  <div class="opinion col-md-4 col-xs-12">
  	<h3 class="guardarcomentario">Dejanos tu opinión</h3>
  	<form>
      <select name="id_celular" class="form-control">
        <option value="" selected disabled hidden>Opinar sobre celular</option>
        {foreach from=$celulares item=celular}
        <option value="{$celular['id_celular']}">{$celular['modelo']}</option>
        {/foreach}
      </select>
      <textarea name="comentariocliente" class="form-control comentariocliente" rows="3" placeholder="Comentario"></textarea>
      <button type="submit" class="btn btn-primary guardarcomentario">Enviar</button>
    </form>
  </div>
</div>
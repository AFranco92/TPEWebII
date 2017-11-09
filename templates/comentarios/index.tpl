<div class="row">
	<div class="table-responsive col-md-12 col-xs-12">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Usuario</th>
					<th>Comentario</th>
				</tr>
			</thead>
			<tbody>
				{foreach from=$comentarios item=comentario}
				<tr>
					<td>
						{$comentario['fk_usuario']}
					</td>
					<td>
						{$comentario['textocomentario']}
					</td>
					<td>
						<a class="boton delete" href="deleteComentario/{$comentario['id_comentario']}"><button class="btn btn-md btn-danger btn-block" type="submit">Eliminar comentario</button></a>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</div>
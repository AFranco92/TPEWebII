<div class="row">
	<div class="table-responsive col-md-12 col-xs-12">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Usuario</th>
					<th>Administrador</th>
				</tr>
			</thead>
			<tbody>
				{foreach from=$usuarios item=usuario}
				<tr>
					<td>
						{$usuario['usuario']}
					</td>
					{if {$usuario['administrador']}}
					<td>
						Sí
					</td>
					{else}
					<td>
						No
					</td>
					{/if}
					<td>
						<a class="boton edit" href="setAdmin/{$usuario['id_usuario']}"><button class="btn btn-md btn-warning btn-block" type="submit">Nombrar administrador</button></a>
					</td>
					<td>
						<a class="boton edit" href="setNoAdmin/{$usuario['id_usuario']}"><button class="btn btn-md btn-warning btn-block" type="submit">Quitar administrador</button></a>
					</td>
					<td>
						<a class="boton delete" href="deleteUsuario/{$usuario['id_usuario']}"><button class="btn btn-md btn-danger btn-block" type="submit">Eliminar usuario</button></a>
					</td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</div>
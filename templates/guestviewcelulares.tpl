<h2>{$titulo}</h2>
<form action="filter" method="POST">
    <select name="afiltrar" class="form-control filter">
        <option value="" selected disabled hidden>Ver por marca</option>
        {foreach from=$marcas item=marca}
        <option value="{$marca['id_marca']}">{$marca['nombre']}</option>
        {/foreach}
    </select>
    <button class="btn btn-lg btn-primary btn-block dofilter" type="submit">Filtrar</button>
</form>
<table class="table table-striped">
    <thead>
        <tr>
            <th>Fotos</th>
            <th>Marca</th>
            <th>Modelo</th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$celulares item=celular}
            <tr id="{$celular['id_celular']}">
                <td>
                    {foreach from=$celular['imagenes'] item=imagen}
                    <figure>
                        <a class="vercaracteristicascelular" href="caracteristicascelular/{$celular['id_celular']}"><img class="fotocelular" src="{$imagen['ruta']}" alt="Imagen del celular {$celular['modelo']}"></a>
                    </figure>
                    {/foreach}
                </td>
                {if $celular['sinstock']}
                    {foreach from=$marcas item=marca}
                        {if $celular['id_marca'] == $marca['id_marca']}
                            <td>
                                {$marca['nombre']}
                            </td>
                        {/if}
                    {/foreach}
                <td>
                    {$celular['modelo']}
                </td>
                {else}
                    {foreach from=$marcas item=marca}
                        {if $celular['id_marca'] == $marca['id_marca']}
                            <td>
                                {$marca['nombre']}
                            </td>
                        {/if}
                    {/foreach}
                <td>
                    {$celular['modelo']}
                </td>
                {/if}
            </tr>
        {/foreach}
    </tbody>
</table>
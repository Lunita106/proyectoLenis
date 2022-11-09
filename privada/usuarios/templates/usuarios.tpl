<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">

</head>
<body>
	<table width="100%" border="0">
		<tr>
			<td width="33%">
				<table border="0">
					<tr>
					</tr>
				</table>
			</td>
			<td align="center" width="33%">
				<h1>USUARIOS</h1>
			</td>
			<td align="rigth" width="33%">	
				<form name="formNuevo" method="post" action="usuario_nuevo.php">
					<a href="javascript:document.formNuevo.submit">
						Nuevo>>>
					</a>
				</form>
			</td>
		</tr>	
	</table>

	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>USUARIO</th><th>PERSONA</th>
				<th><img src="../../imagenes/modificar.gif"></th><th><img src="../../imagenes/borrar.jpeg"></th>
			</tr>
			{assign var="b" value="1"}
			{foreach item=r from=$usuarios}
			<tr>
				<td align="center">{$b}</td>
				<td>{$r.usuariol}</td>
				<td>{$r.ap} {$am} {$nombres}</td>
				<td align="center">
					<form name="formModif{$r.id_usuario}" method="post" action="usuario_modificar.php">
						<input type="hidden" name="id_usuario" value="{$r.id_usuario}">
						<input type="hidden" name="id_persona" value="{$r.id_persona}">
						<a href="javascript:document.formModif{$r.id_usuario}.submit();" title="Modificar Usuarios">
							Modificar>>
						</a>
					</form>
				</td>
				<td align="center">
					<form name="fomElimi{$r.id_usuario}" method="post" action="usuario_eliminar.php">
						<input type="hidden" name="id_usuario" value="{$r.id_usuario}">
						<a href="javascript:document.fomElimi{$r.id_usuario}.submit();" title="Eliminar Usuario" onclick='javascript:return(confirm("Desea Realmente Eliminar al Usuario...{$r.id_usuario}?"));'>
							Eliminar>>
						</a>
					</form>
				</td>
				{assign var="b" value"`$b+1`"}
				{/foreach}
			</tr>
		</table>
		
	</center>
</body>
</html>
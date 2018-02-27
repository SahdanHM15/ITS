<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
		table {
		    border-collapse: collapse;
		    border-spacing: 0;
		    width: 925px;
		    border: 2px solid #ddd;
		}

		th, td {
		    padding: 4px;
		    border: 1px solid #ddd;
		}

		tr:nth-child(even){background-color: #f2f2f2}

		.btn {
		    border: none;
		    background-color: inherit;
		    padding: 14px 28px;
		    font-size: 20px;
		    cursor: pointer;
		    display: inline-block;
		    color: blue;
		}

		.btn:hover {background: #eee;}

	</style>
</head>
<body>
	<h3>Materi 2 - Soal Isian</h3>
	<div style="overflow-x:auto;">
	<table>
		<?php
			include 'koneksi.php';
			$hasil=mysql_query("select * from tbl_soal where tipe_soal='jawaban_singkat'");
		    $jumlah=mysql_num_rows($hasil);
		    $urut=0;
			while($row =mysql_fetch_array($hasil)){
		        $id=$row["id_soal"];
		        $pertanyaan=$row["soal"];
		        
		?>
		    
				<form name="form1" method="post" action="jawab.php">
				<input type="hidden" name="id[]" value=<?php echo $id; ?>>
				<input type="hidden" name="jumlah" value=<?php echo $jumlah; ?>>
					
				    <tr>
				        <td width="25" align="center"><?php echo $urut=$urut+1; ?></td>
				        <td colspan="3" width="900px"><?php echo "$pertanyaan"; ?></td>
				    </tr>
				    <tr>
						<td rowspan='2'></td>
						<td width='25px' align="left">Jawaban: <input name="pilihan[<?php echo $id; ?>]" type="text"></td>
				    </tr>
				    
				    
				     <tr>
				     	<td colspan="4">&nbsp;</td>
				     </tr>
				    <?php
						}
				    ?>
				    <tr>
				        <td colspan="4"><input type="submit" name="submit" value="Jawab" class="btn"></td>
				    </tr>
				    </table>
				    </div>
				</form>
</body>
</html>
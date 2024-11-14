<?php include_once('../_header.php'); ?>
<style>
    /* Tambahkan background pada halaman */
    body {
        background-image: url('<?= base_url(); ?>/_assets/images/1.jpg'); /* Ganti dengan path gambar background Anda */
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        min-height: 100vh; /* Agar background mencakup seluruh halaman */
        margin: 0;
    }

    /* Styling untuk konten dashboard */
    .dashboard-content {
        background-color: rgba(255, 255, 255, 0.9); /* Background putih dengan transparansi */
        padding: 20px;
        border-radius: 10px;
        max-width: 800px;
        margin-left: 270px
        margin: 50px auto;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    }
</style>	
<div class="box">
		<h1>Pasien</h1>
		<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Toggle Menu</a>
		<h4>
			<small>Data Pasien</small>
			<div class="pull-right">
				<a href="" class="btn btn-default btn-xs"><i class="glyphicon glyphicon-refresh"></i></a>
				<a href="add.php" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i> Tambah Pasien</a>
				<a href="import.php" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-import"></i> Import Pasien</a>
			</div>
		</h4>

		<div class="table-responsive">
			<table class="table table-bordered table-striped table-hover" id="pasien">
				<thead>
					<tr>
						<th>Nomor Identitas</th>
						<th>Nama Pasien</th>
						<th>Jenis Kelamin</th>
						<th>Alamat</th>
						<th>No. Telepon</th>
						<th><i class="glyphicon glyphicon-cog"></i></th>
					</tr>
				</thead>
			</table>
		</div>
	</div>

	<script>
		$(document).ready(function(){
		    $('#pasien').DataTable({
		        "processing": true,
		        "serverSide": true,
		        "ajax": "pasien-data.php",
		        // scrollY : '250px',
		        dom: 'Bfrtip',
		        buttons: [
		            'copy',
		            {
		                extend: 'excel',
		                messageTop: 'The information in this table is copyright to Sirius Cybernetics Corp.'
		            },
		            {
		                extend: 'csv'
		            },
		            {
		                extend: 'pdfHtml5',
		                download: 'open',
		                messageBottom: null
		            }
		        ],
		        columnDefs:[{
		        	"searchable": false,
		        	"orderable": false,
		        	"targets": 5,
		        	"render": function(data, type, row){
		        		var btn = "<center><a href=\"edit.php?id="+data+"\" class=\"btn btn-warning btn-xs\"><i class=\"glyphicon glyphicon-edit\"></i></a> <a href=\"del.php?id="+data+"\" onclick=\"return confirm('Yakin menghapus data?');\" class=\"btn btn-danger btn-xs\"><i class=\"glyphicon glyphicon-trash\"></i></a></center>";
		        		return btn;
		        	}
		        }]
		    });
		} );
	</script>

<?php include_once('../_footer.php'); ?>                                                       
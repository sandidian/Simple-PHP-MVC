<div class="page-header">
  <h1>Data<small>User</small></h1>
</div>
<table class="table table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Username</th>
			<th>Password</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<?php  
			$no=1;
			foreach ($users as $user) {
		?>
			<tr>
				<td><?php echo $no ?></td>
				<td><?php echo $user->name ?></td>
				<td><?php echo $user->username ?></td>
				<td><?php echo $user->password ?></td>
				<td><a href="<?php echo URL ?>user/edit/<?php echo $user->id ?>">Edit</a></td>
			</tr>
		<?php  
			$no++;
			}
		?>
	</tbody>
</table>
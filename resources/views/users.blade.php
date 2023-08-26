
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Hobbies</title>
    
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>



<div class="container mt-5">

<table id="users-table" class="display" style="width:100%">
    <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Hobbies</th>
            <th>Action</th>
        </tr>
    </thead>
</table>

</div>



<!-- Modal -->
<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Edit Item</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
      </div>
    </div>
  </div>
</div>



</body>
</html>



<script type="text/javascript">
$(document).ready(function() {
    $('#users-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('get.users') }}",  
        columns: [
            { data: null, name: 'serial', orderable: false, searchable: false },
            { data: 'first_name', name: 'first_name' },
            { data: 'last_name', name: 'last_name' },
            { data: 'hobbies', name: 'hobbies' },
            { data: 'action', name: 'action' }
        ],
        rowCallback: function(row, data, index) {
            $('td:eq(0)', row).html(index + 1 + this.api().page.info().start);
        }
    });
});



$(document).ready(function() {
    $('#users-table').on('click', '.btn-delete', function() {
        let userId = $(this).data('id');
        let deleteUrl = `/user_delete/${userId}`;

        if (confirm('Are you sure you want to delete this user?')) {
            $.ajax({
                url: deleteUrl,
                type: 'DELETE',
                data: {
                    '_token': '{{ csrf_token() }}',
                },
                success: function(response) {
                    alert(response.message);
                    $('#users-table').DataTable().ajax.reload();
                },
                error: function(xhr) {
                    alert('Failed to delete the user. Please try again.');
                }
            });
        }
    });
});



$(document).ready(function() {
    

    $(document).on('click', '.edit-btn', function() {
        var id = $(this).data('id');

        $.ajax({
            url: '/edit-form/' + id,
            method: 'GET',
            success: function(data) {
                $('#editModal .modal-body').html(data);
                $('#editModal').modal('show');
            }
        });
    });
});


$(document).on('click', '#updateBtn', function() {
    const userId = $('#editForm').data('id');
    const formData = $('#editForm').serialize();

    $.ajax({
        url: `/update/${userId}`,
        method: 'POST',
        data: formData,
        success: function(response) {
            $('#editModal').modal('hide');
            $('#users-table').DataTable().ajax.reload(null, false); 
        }
    });
});

</script>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>
    
    <!-- Bootstrap CSS CDN -->
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container mt-5">
    <h2>Add User</h2>

    @if(session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif


    <form action="/add_user" method="POST">
        @csrf  

        <div class="form-group">
            <label for="first_name">First Name:</label>
            <input type="text" class="form-control" id="first_name" name="first_name" required>
        </div>

        <div class="form-group">
            <label for="last_name">Last Name:</label>
            <input type="text" class="form-control" id="last_name" name="last_name" required>
        </div>

        <div class="form-group">
            <label>Hobbies:</label><br>

            @foreach($hobbies as $hobby)               

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="{{ $hobby->id }}" id="{{ $hobby->hobbie_name }}" name="hobbies[]">
                    <label class="form-check-label" for="{{ $hobby->hobbie_name }}">
                        {{ $hobby->hobbie_name }}
                    </label>
                </div>
            @endforeach
        </div>

        <button type="submit" class="btn btn-primary">Add User</button>
    </form>
</div>

</body>
</html>

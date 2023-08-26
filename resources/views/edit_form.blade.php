
<form id="editForm" data-id="{{ $user->id }}">

        @csrf  
     

        <div class="form-group">
            <label for="first_name">First Name:</label>
            <input type="text" class="form-control" id="first_name" name="first_name" value="{{ $user->first_name }}" required>
        </div>

        <div class="form-group">
            <label for="last_name">Last Name:</label>
            <input type="text" class="form-control" id="last_name" name="last_name" value="{{ $user->last_name }}" required>
        </div>

        <div class="form-group">
            <label>Hobbies:</label><br>

            @foreach($allHobbies as $hobby)               

                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="{{ $hobby->id }}" id="{{ $hobby->hobbie_name }}" name="hobbies[]" {{ in_array($hobby->id, $user->hobbies->pluck('id')->toArray()) ? 'checked' : '' }}>
                    <label class="form-check-label" for="{{ $hobby->hobbie_name }}">
                        {{ $hobby->hobbie_name }}
                    </label>
                </div>
            @endforeach
        </div>

       
        <button type="button" class="btn btn-primary" id="updateBtn">Update</button>

    </form>




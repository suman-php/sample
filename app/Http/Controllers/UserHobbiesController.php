<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Log;
use App\Models\User;
use App\Models\Hobby;
use Yajra\DataTables\Facades\DataTables;



class UserHobbiesController extends Controller
{
    public function index()
    {           
        $hobbies = Hobby::all();        
        return view('add_user', ['hobbies' => $hobbies]);        
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'hobbies' => 'required|array',
        ]);   
        
        // Create the user
        $user = User::create([
            'first_name' => $data['first_name'],
            'last_name' => $data['last_name']
        ]);

        // Insert hobbies for the user
        foreach ($request->hobbies as $hobby) {

            $hobbyModel = Hobby::select('id')->where('id',$hobby)->first(); 

            $user->hobbies()->attach($hobbyModel->id, [
                'created_at' => now(),
                'updated_at' => now()
            ]);
        }

        return redirect('/')->with('status', 'User Created!');
    }

    
    public function getUsers() {
      
        if(request()->ajax()) {
            $query = User::query();
           
          
           return  DataTables::of($query)
            ->addColumn('hobbies', function($query) {
                return $query->hobbies->pluck('hobbie_name')->implode(', ');
            })
            ->filterColumn('hobbies', function($query, $keyword) {
                $query->whereHas('hobbies', function($subquery) use ($keyword) {
                    $subquery->where('hobbie_name', 'LIKE', "%{$keyword}%");
                });
            })
            ->addColumn('action', function($query) {             
              
                return "<button class='btn btn-primary edit-btn' data-id='$query->id'>Edit</button>
                <button class='btn btn-danger btn-delete' data-id='$query->id'>Delete</button>";                        
            })
            ->rawColumns(['action'])  
            ->toJson();
        }

        return view('users');
    }

    public function getEditForm($id)
    {
        
        $user = User::with('hobbies')->find($id);
        $allHobbies = Hobby::all(); 

        return view('edit_form', [
            'user' => $user,
            'allHobbies' => $allHobbies
        ]);
    }


    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $user->update($request->only('first_name', 'last_name'));
        
        $hobbies = $request->input('hobbies', []);
        $user->hobbies()->sync($hobbies);

        return response()->json(['message' => 'User updated successfully']);
    }


    public function destroy($id)
    {
        $user = User::find($id);
        if ($user) {
            $user->hobbies()->detach();  
            $user->delete();
        }
       
       return response()->json(['message' => 'User deleted successfully!']);
    }

}
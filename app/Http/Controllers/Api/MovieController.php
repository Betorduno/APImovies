<?php

namespace App\Http\Controllers\Api;

use App\movie;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class MovieController extends Controller
{
    public function showOne ($id) {

        $film = Movie::find($id);

        return (string) $film;
    }
    
    public function showAll () {
        $films = Movie::all();

        return $films->toArray();
    }
    
    public function create (Request $request) {
        $request->validate([
            'title' => ['required'],
            'year' => 'required|digits:4|integer|min:1900|max:'.(date('Y')+1)
        ]);

        $film = Movie::create($request->all());

        return $film;
    }

    public function update (Request $request, $id) {
        
        $film = Movie::findOrFail($id);
        $request->validate([
            'title' => ['required'],
            'year' => 'required|digits:4|integer|min:1900|max:'.(date('Y')+1)
        ]);
        $film->update($request->all());

        return $film;
    }

    public function delete ($id) {
        Movie::find($id)->delete();

        return 204;
    }
}

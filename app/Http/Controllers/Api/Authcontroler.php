<?php

namespace App\Http\Controllers\Api;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class Authcontroler extends Controller
{
    public function Register(Request $request){
			$validateData = $request->validate([
				'name' => 'required|min:5',
				'nickname'=>'required',
				'email' => 'email|required',
				'password' => 'required|confirmed'
			]);
			
			$validateData['password'] = bcrypt($request->password);

			$user = User::create($validateData);

			$accessToken = $user->createToken('authToken')->accessToken;
			
			return response(['user'=>$user, 'access_token'=>$accessToken]);
		} 
		
		public function login(Request $request) {

			$loginData = $request->validate([
				'email' => 'email|required|exists:users,email',
				'password' => 'required'
			]);
			
			if( !auth()->attempt($loginData)){
				return response(['message'=>'Invalid credentials']);
			}

			$accessToken = auth()->user()->createToken('authToken')->accessToken;

			return response(['user'=>auth()->user(), 'access_token'=>$accessToken]);
		}
		
		public function logout (Request $request) {
			$request->user()->tokens()->delete();
		}
}

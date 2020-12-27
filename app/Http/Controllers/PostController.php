<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Notifications\UpdatePostNotificaiton;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all();
        return view('welcome', compact('posts'));
    }

    public function approve(Request $request)
    {
        $id = $request->id;
        $post = Post::find($id);
        $post->is_approved = true;
        if($post->save()) 
        {
            $user = User::first();
            $user->notify(new UpdatePostNotificaiton("Approved Post Id Is: ".$id));
            return response()->json(['success' => true]);
        }
    }
}

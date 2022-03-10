<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

use App\Models\ShortUrl;

class ShortController extends Controller
{
    
    public function short(Request $request) {
       
        if($request->original_url) {
            $new_url = ShortUrl::create([

                'original_url' => $request->original_url,
            ]);
        }

        if($new_url) {
            $short_url = Str::random(40);

            $new_url->update([
                'short_url' => $short_url
            ]);

            return back();
        }

        return back();
    }
}

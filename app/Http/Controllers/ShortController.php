<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Http\Requests\ShortRequest;

use App\Models\ShortUrl;

class ShortController extends Controller
{
    
    public function short(ShortRequest $request) {
       
        if($request->original_url) {

            if(auth()->user()) {
                $new_url = auth()->user()->links()->create([

                    'original_url' => $request->original_url,

                ]);
            } else {
                $new_url = ShortUrl::create([

                    'original_url' => $request->original_url,
                ]);

            }
         
        }

        if($new_url) {
            $short_url = Str::random(40);

            $new_url->update([
                'short_url' => $short_url
            ]);

             return redirect()->back()->with('success_message', 'url short url: <a href="'. url($short_url).'"> "' . url($short_url) .'"</a>');
        }

        return back();
    }

    public function show($code) {
        $short = ShortUrl::where('short_url', $code)->first();

        if($short) {
            return redirect()->to(url($short->original_url));
        }

        return redirect()->to('/');

       
    }
}

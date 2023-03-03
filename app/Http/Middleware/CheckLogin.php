<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
//muon su dung doi tuong nao ben trong class thi phai khai bao doi tuong do o day
//doi tuong xac thuc dang nhap
use Auth;

class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        //kiem tra xem user da dang nhap chua
        /*
            url('login') -> tao duong dan url
            redirect -> di chuyen den mot url
        */
        if(Auth::check() == false)
            return redirect(url('login'));
        return $next($request);
    }
}

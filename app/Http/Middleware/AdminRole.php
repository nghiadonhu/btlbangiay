<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminRole
{
    public function handle(Request $request, Closure $next)
    {
        if (Auth::check() && Auth::user()->role === 'admin') {
            return $next($request);
        }
        session()->flash('error', 'Bạn không có quyền truy cập.');
        return redirect()->route('Login')->with('error', 'Bạn không có quyền truy cập.');
    }
}

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Page title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="{{asset('css/bootstrap/bootstrap.min.css')}}">
</head>
<body>
@include('Layout.header')
    @yield('content')
@include('Layout.footer')
<script src="{{asset('js/bootstrap/bootstrap.bundle.min.js')}}"></script>
</body>
</html>


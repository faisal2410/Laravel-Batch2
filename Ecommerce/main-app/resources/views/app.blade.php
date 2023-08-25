<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="{{asset("/assets/js/axios.min.js")}}"></script>
    <script src="{{asset("/assets/js/jquery-3.7.0.min.js")}}"></script>
    <script src="{{asset("/assets/js/config.js")}}"></script>
    @vite('resources/css/app.css')
</head>
<body>

@include('component.AppBar')
@yield('content')
@include('component.Footer')

</body>
</html>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="{{asset('node_modules/preline/dist/preline.js')}}"></script>
  @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body>
    @include('component.SiteMenu')
    @yield('content')
</body>
</html>

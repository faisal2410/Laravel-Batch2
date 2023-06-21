<!DOCTYPE html>
<html lang="en" data-bs-theme="light">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>MR-X</title>
</head>

<body>

@include('components.navbar')

@include('components.loader')

<div class="" id="content-div">
    @yield('content')
</div>

@include('components.footer')
</body>
</html>

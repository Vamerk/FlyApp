<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FlyApp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<div class="p-3 mb-2 bg-light text-dark">
    <div class="p-3 mb-2 bg-light text-dark">
        <form action="/flight/create" method="post">
            <input type="text" placeholder="Авиакомпания" name="airline"/>
            <input type="text" placeholder="Самолет" name="plane"/>
            <input type="text" placeholder="Полоса" name="runway"/>
            <input type="text" placeholder="Тип самолета" name="type">
            <input type="text" placeholder="Время в полосе" name="timeonline">

            <input type="submit" class="btn btn-primary" value="Добавить">
        </form>
    </div>
</div>

</body>
</html>
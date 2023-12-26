<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FlyApp - Полосы</title>
</head>
<body>
<h1> Тут аналитика взлетнопосадочных полос </h1>
<#list runways as runway, value>
    <div class="col-sm-6">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">ID: ${runway.id} ${value}</h5>
                <p class="card-text"><b>Airline:</b> ${runway.maxPlane}</p>
                <p class="card-text"><b>Plane:</b> ${runway.planes}</p>
                <a href="/flight/${runway.id}" class="btn btn-primary">Информация</a>
            </div>
        </div>
    </div>
</#list>
</body>
</html>
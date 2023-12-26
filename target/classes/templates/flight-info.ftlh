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
<body class="p-3 mb-2 bg-light text-dark">
<h1>Информация о рейсе ${flight.id}</h1>


<div class="container-fluid">
<#--    <div class="row g-3 row-deck">-->
<#--        <div class="col-xxl-3 col-xl-6 col-lg-3 col-md-6 col-sm-12">-->
<#--            <div class="card">-->
<#--                <div class="row">-->
<#--                    <a href="/" title="Widget" class="btn btn-primary">Назад</a>-->
<#--                    <form action="/flight/delete/${flight.id}" method="post">-->
<#--                        <input type="submit" class="btn btn-primary" value="Удалить">-->
<#--                    </form>-->
<#--                </div>-->

<#--                <div class="card-body">-->
<#--                    <h3>ID - ${flight.id}</h3>-->
<#--                    <p class="text-muted"><b>Airline:</b> ${flight.airline} </p>-->
<#--                    <p class="text-muted"><b>Plane:</b> ${flight.plane}</p>-->
<#--                    <p class="text-muted"><b>Strip:</b> ${flight.runway}</p>-->
<#--                    <p class="text-muted"><b>Plane type:</b> ${flight.type}</p>-->
<#--                    <p class="text-muted"><b>Time on line:</b> ${flight.timeonline}</p>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
    <div class="w-75 bd-example">
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">ID: ${flight.id}</h5>
                        <p class="card-text"><b>Авиакомпания:</b> ${flight.airline}</p>
                        <p class="card-text"><b>Самолет:</b> ${flight.plane}</p>
                        <p class="card-text"><b>Полоса:</b> ${flight.runway}</p>
                        <p class="card-text"><b>Status:</b> ${flight.status}</p>
                        <p class="card-text"><b>Тип самолета:</b> ${flight.type}</p>
                        <p class="card-text"><b>Время прилета:</b> ${flight.arrivalTime}</p>
                        <p class="card-text"><b>Время отлета:</b> ${flight.departureTime}</p>


                        <div class="d-flex justify-content-around">
                            <a href="/" class="btn btn-primary">Назад</a>
                            <form action="/flight/delete/${flight.id}" method="post">
                                <input type="submit" class="btn btn-primary" value="Удалить">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
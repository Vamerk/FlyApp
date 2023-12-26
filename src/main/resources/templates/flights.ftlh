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
<body class="d-flex justify-content-start">
    <div class="w-25 d-flex flex-column">
        <h1 class="w-55">Welcome to FlyApp</h1>
        <form action="/runway" method="get">
            <input type="submit" class="btn btn-primary" value="Посмотреть полосы">
        </form>
    </div>


    <div class="w-75 d-flex m-5 flex-column justify-content-center">
        <div class="w-75 bd-example">
            <div class="row">
                <#list flights as flight>
                    <div class="col-sm-6 my-2">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">ID: ${flight.id}</h5>
                                <p class="card-text"><b>Airline:</b> ${flight.airline}</p>
                                <p class="card-text"><b>Plane:</b> ${flight.plane}</p>
                                <a href="/flight/${flight.id}" class="btn btn-primary">Информация</a>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>

        <div class="w-50">
            <form action="/flight/create" method="post">
                <div class="form-group">
                    <label>Авиакомпания</label>
                    <input type="text" class="form-control" placeholder="Авиакомпания" name="airline">
                </div>
                <div class="form-group">
                    <label>Самолет</label>
                    <input type="text" class="form-control" placeholder="Самолет" name="plane"/>

                </div>
                <div class="form-group">
                    <label>Тип самолета</label>
                    <select class="form-control" name="type">
                        <option value="Пассажирский">Пассажирский</option>
                        <option value="Частный">Частный</option>
                        <option value="Государственный">Государственный</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="inputDate">Введите время прилета:</label>
                    <input type="datetime-local" class="form-control" name="arrivalTime">
                </div>
                <div class="form-group">
                    <label for="inputDate">Введите время отлета:</label>
                    <input type="datetime-local" class="form-control" name="departureTime">
                </div>
                <input type="submit" class="btn btn-primary" value="Добавить">
            </form>
        </div>
    </div>


</body>
</html>
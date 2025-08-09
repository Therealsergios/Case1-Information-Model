## Общий процесс создания объекта в PDM системе
### 1. Ввод данных пользователем

#### User вносит данные вручную в веб форму приложения PDM системы:
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>поле</th>
      <th>тип данных</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>dep_num</td>
      <td>INT</td>
    </tr>
    <tr>
      <td>area_name</td>
      <td>VARCHAR</td>
    </tr>
    <tr>
      <td>class</td>
      <td>VARCHAR</td>
    </tr>
    <tr>
      <td>name</td>
      <td>VARCHAR</td>
    </tr>
    <tr>
      <td>tag</td>
      <td>VARCHAR</td>
    </tr>
    <tr>
      <td>dn</td>
      <td>INT</td>
    </tr>
    <tr>
      <td>do</td>
      <td>INT</td>
    </tr>
    <tr>
      <td>length</td>
      <td>FLOAT</td>
    </tr>
    <tr>
      <td>UUID</>
      <td>CHAR(36)
    </tr>
  </tbody>
</table>

### 2. Автоматическое добавление системных данных
#### После создания объекта user и заполнении данных формируется запрос на backend
#### При получении запроса backend:
- устанавливает create_date = CURRENT_DATE;
- генерирует id = char(6);
- выполняет REST API запрос во внешнюю систему для обогощения данными созданного объекта

### 3. Запрос данных из внешней системы
Шаг 1: Срабатывание события
- пользователь создает обект в PDM системе
- создается запись в таблице pipe_passps с заполненными полями:
UUID, dept_num, area_name, class, name, tag, dn, do, length, create_date, arch, user_id
Интеграционный сервис: Автоматическое срабатывание по расписанию, принудительное срабатывание по кнопке из интерфейса интеграционного сревиса

Шаг 2: Получение интеграционным сервисом списка UUID
- получение нового UUID для обогащения данными
```
GET https://PDM-system.com/api/system/classes/objects
HOST: pdm-system.com
Authorization: BarierToken1
Content-Type: application/json
```
Ответ:
```
{
"uuid1":"aca1e7f0-a242-f011-85e0-7446a0ab6ea0"
"uuid2":"fff0a50a-a342-f011-85e0-7446a0ab6ea0"
}
```
Шаг 3: Проверка объектов во внешней системе
- запрос на получение атрибутов объектов по uuid через интеграционный сервис
```
GET https://ERP-system.com/api/system/classes/objects?ids=aca1e7f0-a242-f011-85e0-7446a0ab6ea0,fff0a50a-a342-f011-85e0-7446a0ab6ea0&fields=name,tag,length
HOST: erp-system.com
Authorization: BarierToken2
Content-Type: application/json 
```
Ответ

Успешный 200 ОК
```
{
"name": "073"
"tag": "ptp041"
"length": "600.0"
},
{
"name": "090"
"tag": "btp041"
"length": "850.0"
}
```
Ошибка 400 - UUID не найден

Ошибка 500 - ошибка подключения

Шаг 4: Загрузка значений полученных параметров
Обновление объектов по UUID
```
POST https://PDM-system.com/api/system/classes/objects/attributes
Content-Type: applicetion/json
HOST: pdm-system.com
Authorization: BarierToken1
Content-Type: application/json

{
"uuid1": {
    "name": "073"
    "tag": "ptp041"
    "length": "600.0"
}
"uuid2": {
    "name": "090"
    "tag": "btp041"
    "length": "850.0"
}
}
```
Ответ

200 ОК - успешно записано

Ошибка 400 - UUID не найден

Ошибка 500 - ошибка подключения

Шаг 5. Логирование процесса

Интеграционный сервис записывает логи
- UUID
- Статус каждого шага
- Коды ответов
- Время выполнения
- Ошибки при вызове API

Пример лог записи

```
{
  "uuid": "uuid-1",
  "status": "SUCCESS",
  "external_status": 200,
  "internal_status": 200,
  "timestamp": "2025-07-25T14:20:00Z"
}
```

### 4. Формирование полной строки данных
#### После получения ответа сервер объединяет:
- введённые пользователем поля - загружены ранее
- системные поля (id, create_date) - сформированы ранее
- данные из внешней системы

Формируется SQL запрос загрузка новых значений
```
INSERT INTO pipe_passps(...)VALUES(...)
```

### 5. Добавление данных в БД
Backend PDM системы вставляет полученные данные в таблицу pipe_passps
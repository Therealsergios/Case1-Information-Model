## Анализ данных реализованного функционала

По итогам внедрения функционала по созданию объектов в PDM системе и обогащения его данными из ERP системы с использованием интеграционного сервиса проведено исследование в рамках которого. Исследование проведено в период с 26.08.24 по 06.09.24.

- изучалось количество созданных объектов в период проведения исследования
- изучалось количество созданных объектов в определенное время в рамках дня
- изучалось количество созданных объектов на пользователя и доля архивированных объектов
- формировалась витрина данных в виде графиков с показателями

1. Количество созданных объектов

SQL запрос для получения необходимых данных

```
with t1 as (
SELECT
create_date::date as date,
uuid
FROM
pipe_passps
)
SELECT 
date,
count(uuid) as pasp_count
FROM
t1
where arch = 'active'
group by date
order by date
```

Итоговая таблица с данными

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>date</th>
      <th>pasp_count</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>26.08.2024</td><td>35</td></tr>
    <tr><td>27.08.2024</td><td>47</td></tr>
    <tr><td>28.08.2024</td><td>63</td></tr>
    <tr><td>29.08.2024</td><td>68</td></tr>
    <tr><td>30.08.2024</td><td>70</td></tr>
    <tr><td>02.09.2024</td><td>100</td></tr>
    <tr><td>03.09.2024</td><td>113</td></tr>
    <tr><td>04.09.2024</td><td>118</td></tr>
    <tr><td>05.09.2024</td><td>94</td></tr>
    <tr><td>06.09.2024</td><td>71</td></tr>
  </tbody>
</table>

Полученный график

![График - создании объектов](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/objects_create.png)

2. Созданные объекты по рабочим часам

SQL запрос для получения необходимых данных

```
with t1 as (
select
extract(hour from create_date) as time,
uuid
from
pipe_passps
)

select
time,
count(uuid) as pasp_count
from
t1
where time BETWEEN 9 and 18
group by time
order by time
```

Итоговая таблица с данными

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>time</th>
      <th>pasp_count</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>9</td><td>54</td></tr>
    <tr><td>10</td><td>64</td></tr>
    <tr><td>11</td><td>76</td></tr>
    <tr><td>12</td><td>96</td></tr>
    <tr><td>13</td><td>5</td></tr>
    <tr><td>14</td><td>69</td></tr>
    <tr><td>15</td><td>91</td></tr>
    <tr><td>16</td><td>117</td></tr>
    <tr><td>17</td><td>113</td></tr>
    <tr><td>18</td><td>94</td></tr>
  </tbody>
</table>

Полученный график

![График - создании объектов по времени](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/objects_by_time.png)

3. Созданные объекты по пользователям и доля архивированных объектов

SQL запрос для получения необходимых данных

```
SELECT
canceled_pasp::decimal / created_pasp as arch_rate,
created_pasp::decimal / active_users as pasp_per_user,
canceled_pasp,
created_pasp,
active_users,
date
FROM
(
SELECT
count(order_id) filter (where arch = 'archive') as canceled_pasp,
count(order_id) filter (where arch = 'active') as created_pasp,
count(distinct user_id) as active_users,
create_date::date as date
FROM
user_actions
group by 4
) t1
```

Итоговая таблица с данными

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>arch_rate</th>
      <th>pasp_per_user</th>
      <th>canceled_pasp</th>
      <th>created_pasp</th>
      <th>active_users</th>
      <th>date</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>0,29</td><td>7,00</td><td>10</td><td>35</td><td>5</td><td>26.08.2024</td></tr>
    <tr><td>0,23</td><td>9,40</td><td>11</td><td>47</td><td>5</td><td>27.08.2024</td></tr>
    <tr><td>0,24</td><td>12,60</td><td>15</td><td>63</td><td>5</td><td>28.08.2024</td></tr>
    <tr><td>0,28</td><td>13,60</td><td>19</td><td>68</td><td>5</td><td>29.08.2024</td></tr>
    <tr><td>0,2</td><td>14,00</td><td>14</td><td>70</td><td>5</td><td>30.08.2024</td></tr>
    <tr><td>0,1</td><td>20,00</td><td>10</td><td>100</td><td>5</td><td>02.09.2024</td></tr>
    <tr><td>0,05</td><td>22,60</td><td>6</td><td>113</td><td>5</td><td>03.09.2024</td></tr>
    <tr><td>0,08</td><td>23,60</td><td>9</td><td>118</td><td>5</td><td>04.09.2024</td></tr>
    <tr><td>0,04</td><td>18,80</td><td>4</td><td>94</td><td>5</td><td>05.09.2024</td></tr>
    <tr><td>0,03</td><td>14,20</td><td>2</td><td>71</td><td>5</td><td>06.09.2024</td></tr>
  </tbody>
</table>

Полученные графики

![Количество созданных объектов по пользователям](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/create_by_user.png)

![Доля архивированных объектов](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/arch_rate.png)

4. Итоговая витрина данных

![Витрина данных](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/data_presentation.png)

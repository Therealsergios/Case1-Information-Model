### Создание таблицы в БД PDM системы
 Описание значений, необходимых для учёта и хранения в БД PDM системы по объектам:

<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>формат данных</th>
      <th>наименование поля</th>
      <th>пояснение</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>char(6)</td>
      <td>id</td>
      <td>при создании автоматически генерируется системой</td>
    </tr>
    <tr>
      <td>int</td>
      <td>dep_num</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>varchar</td>
      <td>area_name</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>varchar</td>
      <td>class</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>varchar</td>
      <td>name</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>varchar</td>
      <td>experiment_type</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>number</td>
      <td>ex_pressure</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>number</td>
      <td>exp_pressure</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>number</td>
      <td>work_pressure</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>number</td>
      <td>inv_num</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>number</td>
      <td>pipe_level</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>varchar</td>
      <td>environment_name</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>number</td>
      <td>rev_period</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>number</td>
      <td>work_temp</td>
      <td>запрашивается через интеграционный сервис из системы 2</td>
    </tr>
    <tr>
      <td>varchar</td>
      <td>tag</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>number</td>
      <td>dn</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>number</td>
      <td>do</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>number</td>
      <td>length</td>
      <td>вводится пользователем вручную в системе 1</td>
    </tr>
    <tr>
      <td>date</td>
      <td>create_date</td>
      <td>автоматически создается системой по текущей дате</td>
    </tr>
    <tr>
      <td>varchar(50)</td>
      <td>arch</td>
      <td>по умолчанию заполняется 'active'</td>
    </tr>
    <tr>
      <td>char(6)</td>
      <td>user_id</td>
      <td>автоматически заполняется системой, id пользователя, создавшего объект, 6 цифр, из таблицы пользователей</td>
    </tr>
    <tr>
      <td>char(36)</td>
      <td>UUID</td>
      <td>UUID объекта внешней системы</td>
    </tr>
  </tbody>
</table>

---
Пример таблицы с данными в рамках описанных выше значений:
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id</th>
      <th>UUID</th>
      <th>dep_num</th>
      <th>area_name</th>
      <th>class</th>
      <th>name</th>
      <th>experiment_type</th>
      <th>ex_pressure</th>
      <th>exp_pressure</th>
      <th>work_pressure</th>
      <th>inv_num</th>
      <th>pipe_level</th>
      <th>environment_name</th>
      <th>rev_period</th>
      <th>work_temp</th>
      <th>tag</th>
      <th>dn</th>
      <th>do</th>
      <th>length</th>
      <th>create_date</th>
      <th>arch</th>
      <th>user_id</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>123456</td>
      <td>aca1e7f0-a242-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>073</td>
      <td>Hydraulic</td>
      <td>12,30</td>
      <td>15,40</td>
      <td>4,90</td>
      <td>120362</td>
      <td>2</td>
      <td>Naphtha</td>
      <td>3,00</td>
      <td>35,00</td>
      <td>ptp041</td>
      <td>100</td>
      <td>110</td>
      <td>600,0</td>
      <td>24.02.2020</td>
      <td>active</td>
      <td>123456</td>
    </tr>
    <tr>
      <td>123654</td>
      <td>fff0a50a-a342-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>090</td>
      <td>Hydraulic</td>
      <td>12,00</td>
      <td>15,53</td>
      <td>12,00</td>
      <td>110790</td>
      <td>3</td>
      <td>Gazoline</td>
      <td>3,00</td>
      <td>90,00</td>
      <td>btp041</td>
      <td>150</td>
      <td>160</td>
      <td>850,0</td>
      <td>10.04.2020</td>
      <td>active</td>
      <td>123654</td>
    </tr>
    <tr>
      <td>654321</td>
      <td>b1a1e7f0-a242-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>092A</td>
      <td>Hydraulic</td>
      <td>16,00</td>
      <td>20,70</td>
      <td>6,50</td>
      <td>175648</td>
      <td>4</td>
      <td>Fraction</td>
      <td>3,00</td>
      <td>50,00</td>
      <td>ftp041</td>
      <td>120</td>
      <td>132</td>
      <td>450,7</td>
      <td>10.04.2020</td>
      <td>active</td>
      <td>123456</td>
    </tr>
    <tr>
      <td>111222</td>
      <td>678db6fa-a242-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>092B</td>
      <td>Hydraulic</td>
      <td>16,00</td>
      <td>20,70</td>
      <td>6,50</td>
      <td>175648</td>
      <td>4</td>
      <td>Fraction</td>
      <td>3,00</td>
      <td>50,00</td>
      <td>ftp042</td>
      <td>120</td>
      <td>132</td>
      <td>320,0</td>
      <td>10.04.2020</td>
      <td>active</td>
      <td>123654</td>
    </tr>
    <tr>
      <td>222333</td>
      <td>6c8db6fa-a242-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>094</td>
      <td>Hydraulic</td>
      <td>16,40</td>
      <td>21,20</td>
      <td>5,90</td>
      <td>175648</td>
      <td>2</td>
      <td>Gazoline</td>
      <td>3,00</td>
      <td>40,00</td>
      <td>btp031</td>
      <td>150</td>
      <td>160</td>
      <td>515,4</td>
      <td>14.09.2021</td>
      <td>active</td>
      <td>123654</td>
    </tr>
    <tr>
      <td>333444</td>
      <td>825b3502-a342-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>097</td>
      <td>Hydraulic</td>
      <td>14,00</td>
      <td>20,60</td>
      <td>5,90</td>
      <td>175648</td>
      <td>2</td>
      <td>Steam</td>
      <td>3,00</td>
      <td>40,00</td>
      <td>ptp042</td>
      <td>100</td>
      <td>110</td>
      <td>100,0</td>
      <td>10.04.2020</td>
      <td>active</td>
      <td>123456</td>
    </tr>
    <tr>
      <td>444555</td>
      <td>875b3502-a342-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>098</td>
      <td>Hydraulic</td>
      <td>11,00</td>
      <td>14,60</td>
      <td>5,90</td>
      <td>175648</td>
      <td>2</td>
      <td>Fraction</td>
      <td>3,00</td>
      <td>50,00</td>
      <td>ftp021</td>
      <td>150</td>
      <td>160</td>
      <td>50,0</td>
      <td>01.02.2019</td>
      <td>active</td>
      <td>123456</td>
    </tr>
    <tr>
      <td>555666</td>
      <td>faf0a50a-a342-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>099</td>
      <td>Hydraulic</td>
      <td>16,00</td>
      <td>22,10</td>
      <td>6,00</td>
      <td>175648</td>
      <td>1</td>
      <td>Gazoline</td>
      <td>3,00</td>
      <td>40,00</td>
      <td>btp032</td>
      <td>140</td>
      <td>152</td>
      <td>100,0</td>
      <td>20.12.2024</td>
      <td>active</td>
      <td>123456</td>
    </tr>
    <tr>
      <td>666111</td>
      <td>e8049ee4-a242-f011-85e0-7446a0ab6ea0</td>
      <td>14</td>
      <td>MCK</td>
      <td>Pipeline</td>
      <td>017B</td>
      <td>Pneumatic</td>
      <td>64,00</td>
      <td>82,82</td>
      <td>64,00</td>
      <td>120333</td>
      <td>1</td>
      <td>Air</td>
      <td>6,00</td>
      <td>40,00</td>
      <td>atp021</td>
      <td>100</td>
      <td>110</td>
      <td>40,5</td>
      <td>03.06.2023</td>
      <td>active</td>
      <td>123456</td>
    </tr>
  </tbody>
</table>

---
SQL запрос на создание таблицы и внесение значений, указанных в таблице выше:
```
CREATE TABLE pipe_passps (
    id CHAR(6) PRIMARY KEY,
    UUID CHAR(36) NOT NULL,
    dep_num INT NOT NULL,
    area_name VARCHAR(50) NOT NULL,
    class VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    experiment_type VARCHAR(50),
    ex_pressure FLOAT,
    exp_pressure FLOAT,
    work_pressure FLOAT,
    inv_num INT,
    pipe_level INT,
    environment_name VARCHAR(50),
    rev_period FLOAT,
    work_temp FLOAT,
    tag VARCHAR(50) NOT NULL,
    dn INT,
    do INT,
    length FLOAT,
    create_date DATE NOT NULL DEFAULT CURRENT_DATE,
    arch VARCHAR(50) NOT NULL DEFAULT 'active',
    user_id CHAR(6) NOT NULL
);

INSERT INTO pipe_passps (
    id, UUID, dep_num, area_name, class, name, experiment_type,
    ex_pressure, exp_pressure, work_pressure,
    inv_num, pipe_level, environment_name,
    rev_period, work_temp, tag, dn, do, length, create_date
) VALUES
('123456', 'aca1e7f0-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '073', 'Hydraulic', 12.30, 15.40, 4.90, 120362, 2, 'Naphtha', 3.00, 35.00, 'ptp041', 100, 110, 600.0, '2020-02-24', 'active', '123456'),
('123654', 'fff0a50a-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '090', 'Hydraulic', 12.00, 15.53, 12.00, 110790, 3, 'Gazoline', 3.00, 90.00, 'btp041', 150, 160, 850.0, '2020-04-10', 'active', '123654'),
('654321', 'b1a1e7f0-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '092A', 'Hydraulic', 16.00, 20.70, 6.50, 175648, 4, 'Fraction', 3.00, 50.00, 'ftp041', 120, 132, 450.7, '2020-04-10', 'active', '123456'),
('111222', '678db6fa-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '092B', 'Hydraulic', 16.00, 20.70, 6.50, 175648, 4, 'Fraction', 3.00, 50.00, 'ftp042', 120, 132, 320.0, '2020-04-10', 'active', '123654'),
('222333', '6c8db6fa-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '094', 'Hydraulic', 16.40, 21.20, 5.90, 175648, 2, 'Gazoline', 3.00, 40.00, 'btp031', 150, 160, 515.4, '2021-09-14', 'active', '123654'),
('333444', '825b3502-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '097', 'Hydraulic', 14.00, 20.60, 5.90, 175648, 2, 'Steam', 3.00, 40.00, 'ptp042', 100, 110, 100.0, '2020-04-10', 'active', '123456'),
('444555', '875b3502-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '098', 'Hydraulic', 11.00, 14.60, 5.90, 175648, 2, 'Fraction', 3.00, 50.00, 'ftp021', 150, 160, 50.0, '2019-02-01', 'active', '123456'),
('555666', 'faf0a50a-a342-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '099', 'Hydraulic', 16.00, 22.10, 6.00, 175648, 1, 'Gazoline', 3.00, 40.00, 'btp032', 140, 152, 100.0, '2024-12-20', 'active', '123456'),
('666111', 'e8049ee4-a242-f011-85e0-7446a0ab6ea0', 14, 'MCK', 'Pipeline', '017B', 'Pneumatic', 64.00, 82.82, 64.00, 120333, 1, 'Air', 6.00, 40.00, 'atp021', 100, 110, 40.5, '2023-06-03', 'active', '123456');
```
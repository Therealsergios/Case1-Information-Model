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
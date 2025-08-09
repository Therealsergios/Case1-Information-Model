# Информационная модель
## В данном кейсе отображены этапы проектирования фукнционала формирования новых объектов информационной модели в PDM системе

### В рамках реализации функционала предусматривалось:
- создание пользователем объекта в веб интерфейсе системы
- заполнение части атрибутов объекта в интерфейсе системы - пользовательские атрибуты
- формирование запроса запроса системой PDM в систему ERP через интеграционный сервис на обогащение объекта атрибутами, используя архитектурный стиль REST API
- вохранение в системе объекта, наполнение данными БД PDM системы
- возможность редактирования пользовательских атрибутов объекта, перезапись данных в БД PDM системы
- принудительное обновление из интерфейса интеграционного сервиса атрибутов, полученных из внешней системы и перезапись их в БД PDM системы
- автоматическое обновление атрибутов, полученных из внешней системы и перезапись их в БД PDM системы
- возможность архивации объекта в системе, с изменением статуса на "архивный", и извлечение объекта из архива
---

## [Создание таблиц с данными в СУБД PDM системы](https://github.com/Therealsergios/Case1-Information-Model/tree/main/data%20and%20tables)
- [Описание данных](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20tables/describe.md)
- [Описание функционала создания объектов](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20tables/backend%20desc.md)
- [Таблица с описанием данных](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20tables/table%20data.md)
- [Таблица со значениями](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20tables/table%20general.md)
- [SQL запрос](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20tables/create%20insert.sql)

## [Витрина данных. Анализ изменений](https://github.com/Therealsergios/Case1-Information-Model/tree/main/data%20and%20graphs)
- [Описание](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/data%20analys.md)
- [График создания объектов](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/objects_create.png)
- [Гистограмма создания объектов по времени](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/objects_by_time.png)
- [График доли архивированных объектов](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/arch_rate.png)
- [Гистограмма созданых объектов по пользователям](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/create_by_user.png)
- [Общая витрина](https://github.com/Therealsergios/Case1-Information-Model/blob/main/data%20and%20graphs/data_presentation.png)

## [UML диаграммы процессов](https://github.com/Therealsergios/Case1-Information-Model/tree/main/diagrams)
- [Описание](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/description.md)
- [Use case diagram](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/UML%20use%20case%20diagram.png)
- [State diagram](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/UML%20state.png)
- [Sequence diagram](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/Sequence.png)
- [Sequence uml code](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/uml%20code.txt)
- [C4 diagram](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/C4%20diagram.png)
- [Схема обогощения данными](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/scheme.png)

## [Rest API](https://github.com/Therealsergios/Case1-Information-Model/tree/main/rest%20api)
- [Описание](https://github.com/Therealsergios/Case1-Information-Model/blob/main/rest%20api/description.md)
- [Спецификация OpenAPI](https://github.com/Therealsergios/Case1-Information-Model/blob/main/rest%20api/speci.yaml)

## [Пользовательское тестирование](https://github.com/Therealsergios/Case1-Information-Model/tree/main/user%20test)
- [Сценарий тестирования](https://github.com/Therealsergios/Case1-Information-Model/blob/main/user%20test/skript.md)
- [Негативные кейсы](https://github.com/Therealsergios/Case1-Information-Model/blob/main/user%20test/neagtive%20cases.md)

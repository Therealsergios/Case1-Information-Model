## При проектировании архитектуры разрабатываемого функционала формировались различные UML диаграмы

1. Use case diagram

На диаграмме на верхнем уровне показаны взаимодействия пользователя и PDM системы

![Диаграмма use case](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/UML%20use%20case%20diagram.png)

2. State diagram

На диаграмме показаны переходные процессы и состояния бизнес сущностей: "Пользователь", "Объект", "API", "Токен"

![Диаграмма state](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/UML%20state.png)

3. Sequence diagram

На диаграмме показаны взаимодецствия между объектами систем и последовательности взаимодействия. 
Описан процесс принудительного получения данных PDM системой используя интерфейс интеграционного сервиса

![Диаграмма sequence](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/Sequence.png)

[UML код диаграммы Sequence](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/uml%20code.txt#L1C1-L82C8)

4. C4 diagram

На диаграмме описана работа backend веб приложения PDM системы в части создания нового объекта в системе

![Диаграмма C4](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/C4%20diagram.png)

5. Укрупненная схема обогощения данными

На схеме представлен на верхнем уровне процесс взаимодействия PDM системы - интеграционного сервиса - ERP системы в части обогощения данными объектов в PDM системе

![Схема обогощения данными](https://github.com/Therealsergios/Case1-Information-Model/blob/main/diagrams/scheme.png)

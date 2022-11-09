﻿# language: ru
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA20_формировать_прочие_отчеты

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb



Функционал: Проверка формирования отчета Markdown

Как разработчик
Я хочу чтобы корректно формировался отчет Markdown
Чтобы я мог видеть результат работы сценариев


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий



Сценарий: Проверка отчета Markdown. Группа как шаг. Нет тегов screenshot ни у одного шага в группе.
		Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Markdown/ПроверкаИнструкцииMarkdown03"
		И в открытой форме я перехожу к закладке с заголовком "Сервис"
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И я перехожу к закладке с именем "ГруппаSikuliXServer"
		И я разворачиваю группу с именем "HTMLИMarkdown"
		И я устанавливаю флаг с именем 'СоздаватьИнструкциюMarkdown'
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
		
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И в поле каталог отчета Markdown я указываю путь к относительному каталогу "tools\Markdown"
		И я устанавливаю флаг с именем 'ТекстовыеИнструкцииГруппаШаговКакШаг'
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		И в каталоге Markdown появился 1 файл Markdown

		И я получаю данные файла "*.MD" в каталоге '$КаталогMarkdown$'
		И файл "$_ПолноеИмя$" содержит строки
			|"И Пауза 0.3"|
		И файл "$_ПолноеИмя$" не содержит строки
			|"И Пауза 0.1"|
			|"И Пауза 0.2"|

		Затем количество файлов в каталоге "$КаталогMarkdown$\images" я запоминаю как "КоличествоФайловСкриншотов"	
		Тогда переменная "КоличествоФайловСкриншотов" имеет значение 1



Сценарий: Проверка отчета Markdown. Группа как шаг. Два тега screenshot на несколько шагов.
		Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Markdown/ПроверкаИнструкцииMarkdown02"
		И в открытой форме я перехожу к закладке с заголовком "Сервис"
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И я перехожу к закладке с именем "ГруппаSikuliXServer"
		И я разворачиваю группу с именем "HTMLИMarkdown"
		И я устанавливаю флаг с именем 'СоздаватьИнструкциюMarkdown'
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
		
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И в поле каталог отчета Markdown я указываю путь к относительному каталогу "tools\Markdown"
		И я устанавливаю флаг с именем 'ТекстовыеИнструкцииГруппаШаговКакШаг'
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		И в каталоге Markdown появился 1 файл Markdown

		И я получаю данные файла "*.MD" в каталоге '$КаталогMarkdown$'
		И файл "$_ПолноеИмя$" содержит строки
			|"И Пауза 0.1"|
		И файл "$_ПолноеИмя$" не содержит строки
			|"И Пауза 0.2"|
			|"И Пауза 0.22"|

		Затем количество файлов в каталоге "$КаталогMarkdown$\images" я запоминаю как "КоличествоФайловСкриншотов"	
		Тогда переменная "КоличествоФайловСкриншотов" имеет значение 2


Сценарий: Проверка отчета Markdown. Группа как шаг. Один тег screenshot на несколько шагов.
		Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "Markdown/ПроверкаИнструкцииMarkdown01"
		И в открытой форме я перехожу к закладке с заголовком "Сервис"
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И я перехожу к закладке с именем "ГруппаSikuliXServer"
		И я разворачиваю группу с именем "HTMLИMarkdown"
		И я устанавливаю флаг с именем 'СоздаватьИнструкциюMarkdown'
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
		
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И в поле каталог отчета Markdown я указываю путь к относительному каталогу "tools\Markdown"
		И я устанавливаю флаг с именем 'ТекстовыеИнструкцииГруппаШаговКакШаг'
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		И в каталоге Markdown появился 1 файл Markdown

		И я получаю данные файла "*.MD" в каталоге '$КаталогMarkdown$'
		И файл "$_ПолноеИмя$" содержит строки
			|"И Пауза 0.1"|
		И файл "$_ПолноеИмя$" не содержит строки
			|"И Пауза 0.2"|
			|"И Пауза 0.22"|

		Затем количество файлов в каталоге "$КаталогMarkdown$\images" я запоминаю как "КоличествоФайловСкриншотов"	
		Тогда переменная "КоличествоФайловСкриншотов" имеет значение 1





Сценарий: Проверка отчета Markdown. Снятие скриншотов компонентой.
	//HTML с помощью компоненты можно формировать только в синхронными вызовами, т.к. снятие скриншота может происходить
	//в середине выполнения шага.
	Если 'НЕ Ванесса.ЗапрещеныСинхронныеВызовы' Тогда
		Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаHTML"
		И в открытой форме я перехожу к закладке с заголовком "Сервис"
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И я перехожу к закладке с именем "ГруппаSikuliXServer"
		И я разворачиваю группу с именем "HTMLИMarkdown"
		И я устанавливаю флаг с именем 'СоздаватьИнструкциюMarkdown'
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я перехожу к закладке с именем "СтраницаСкриншоты"
		
		И я перехожу к закладке с именем "СтраницаСервисОсновные"
		И я разворачиваю группу с именем "ГруппаИспользоватьКомпонентуVanessaExt"
		И я устанавливаю флаг с именем 'ИспользоватьКомпонентуVanessaExt'
		И я устанавливаю флаг с именем 'ИспользоватьВнешнююКомпонентуДляСкриншотов'
		И из выпадающего списка с именем "СпособСнятияСкриншотовВнешнейКомпонентой" я выбираю точное значение 'Весь экран'
		
		И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
		И в поле каталог отчета Markdown я указываю путь к относительному каталогу "tools\Markdown"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		И в каталоге Markdown появился 1 файл Markdown
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "я выполняю простой шаг контекста"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "Другой текст первого шага"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "Другой текст второго шага Параметр2 и Параметр1"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И этот шаг должен быть проигнориорован в автоинструкции"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "004. И я выполняю ещё простой шаг"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "004.И я выполняю ещё простой шаг"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "Когда я выполняю простой шаг в группе один"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "Когда я выполняю простой шаг в группе два"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "И группа шагов один"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов два"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "И группа другой текст"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов три"
		И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов четыре"

Сценарий: Проверка отчета Markdown. Снятие скриншотов внешней прграммой.
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаHTML"
	И в открытой форме я перехожу к закладке с заголовком "Сервис"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я перехожу к закладке с именем "ГруппаSikuliXServer"
	И я разворачиваю группу с именем "HTMLИMarkdown"
	И я устанавливаю флаг с именем 'СоздаватьИнструкциюMarkdown'
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я перехожу к закладке с именем "СтраницаСкриншоты"
	И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И в поле каталог отчета Markdown я указываю путь к относительному каталогу "tools\Markdown"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И в каталоге Markdown появился 1 файл Markdown
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "я выполняю простой шаг контекста"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "Другой текст первого шага"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "Другой текст второго шага Параметр2 и Параметр1"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И этот шаг должен быть проигнориорован в автоинструкции"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "004. И я выполняю ещё простой шаг"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "004.И я выполняю ещё простой шаг"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "Когда я выполняю простой шаг в группе один"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "Когда я выполняю простой шаг в группе два"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "И группа шагов один"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов два"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" есть строка "И группа другой текст"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов три"
	И в Файле инструкции "Тестовая фича, проверяющая генерацию отчета HTML.MD" нет строки  "И группа шагов четыре"
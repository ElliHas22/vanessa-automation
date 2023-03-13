﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild


Функциональность: АктуализацияСценариев04
 

Сценарий: АктуализацияСценариев04
	Дано я закрываю сеанс текущего клиента тестирования
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я удаляю все элементы справочника "Справочник1"
	
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	
	Когда открылось окно 'Справочник1'
	И я нажимаю на кнопку 'Создать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Тест1'
	И из выпадающего списка с именем "Реквизит1" я выбираю точное значение 'ЗначениеПеречисления1'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Справочник1 (создание) *' в течение 20 секунд
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку 'Создать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Тест2'
	И из выпадающего списка с именем "Реквизит1" я выбираю точное значение 'ЗначениеПеречисления2'
	И я нажимаю на кнопку 'Записать и закрыть'
	И я жду закрытия окна 'Справочник1 (создание) *' в течение 20 секунд
		
	Тогда таблица "Список" стала равной:
		| 'Наименование' | 'Реквизит1'             |
		| 'Тест1'        | 'ЗначениеПеречисления1' |
		| 'Тест3'        | '*'                     |
	
	
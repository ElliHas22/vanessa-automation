﻿# Как запустить сценарий, реализующий Onboarding

* Надо встроить в конфигурацию расширение VanessaInteractive.
* В каждую форму, в которой планиуруется запускать сценарий Onboarding нужно встроить код:

```bsl
&НаКлиенте
Функция ДанныеРеквизитовФормыOnboarding() Экспорт
	Возврат ДанныеРеквизитовФормыOnboardingСервер();
КонецФункции	

&НаСервере
Функция ДанныеРеквизитовФормыOnboardingСервер()
	Возврат VanessaInteractive.ДанныеРеквизитовФормыOnboarding(ЭтаФорма);
КонецФункции	

&НаКлиенте
Процедура Расш1_OnboardingПосле(Команда)
	
	Ванесса = VanessaInteractiveКлиент.ПолучитьФормуVanessaAutomation();
	Ванесса.УстановитьТекстФичаФайла(ТекстФичаФайла());
	
	СтруктураНастроек = Новый Структура;
	СтруктураНастроек.Вставить("ИспользоватьКомпонентуVanessaExt", Истина);
	Ванесса.УстановитьНастройкиПриЗапускеБезОткрытияФормы(СтруктураНастроек);
	
	Ванесса.ВыполнитьСценарииБезОткрытияФормы();
	
КонецПроцедуры

```

* Функцию ТекстФичаФайла() надо реализовать самостоятельно. Она должна вернуть текст фича файла.
* Примеры таких фича файлов можно найти тут: examples\features\VAInteracive


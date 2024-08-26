﻿Процедура ОбработатьСобытиеРедактора(Событие, ЭтотОбъект) Экспорт
	
	Если Событие <> Неопределено Тогда
		
		ИмяСобытия = Событие.event;
		
		Если ИмяСобытия = "EVENT_QUERY_CONSTRUCT" Тогда
			ЭтотОбъект.ВызватьКонструкторЗапроса(Событие.params);
		КонецЕсли;
		
		Если ИмяСобытия = "EVENT_FORMAT_CONSTRUCT" Тогда
			ЭтотОбъект.ВызватьКонструкторФорматнойСтроки(Событие.params);
		КонецЕсли;
		
		Если ИмяСобытия = "EVENT_GET_METADATA" Тогда
			ЭтотОбъект.ОбработкаСобытияПолученияМетаданных(Событие.params);
		КонецЕсли;
		
		Если ИмяСобытия = "EVENT_CONTENT_CHANGED" Тогда
			ЭтотОбъект.УстановитьТекстКода();
		КонецЕсли;
		
		Если ИмяСобытия = "EVENT_ON_LINK_CLICK" Тогда
			Если 0 < СтрНайти(Событие.params.href, "e1cib") Тогда
				ПерейтиПоНавигационнойСсылке(Событие.params.href);
			КонецЕсли;
		КонецЕсли;
		
		Если ИмяСобытия = "EVENT_GET_VARIABLE_DATA" Тогда
			ЭтотОбъект.ОбработкаСобытияПолученияПеременной(Событие.params);
		КонецЕсли;
		
	КонецЕсли;
	
КонецПроцедуры

Функция ЕстьПолеHTML(ЭтотОбъект) Экспорт
	Возврат Не ЭтотОбъект.Элементы.Найти("ПолеHTML") = Неопределено;
КонецФункции
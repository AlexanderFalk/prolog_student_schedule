# prolog_student_schedule
This program states the relationsship between students fields, their rooms, and schedules.  
To explain the relationsship:  
* There are fields, which are the different studies  
* There are rooms, which a field can be assigned to. Rooms are sorted after a floor-roomnumber principle like: R202, where the first number is the floor and the last two are the roomnumber.  
* There are days, which is determined in weekdays from Monday to Friday.  
* Each Day has is divided into two timeframes. Morningframe: 08.30 - 12.00 . Afternoonframe: 12.30 - 16.00  
* Each field has a room assigned  
* Each field has a day and timeframe assigned  
  
  
The above are facts and there has been assigned rules to retrieve a fields room or their schedule.  
You can retrieve it by example entering in the Prolog (SWIPL) CLI:  
```
  schedule(history, D, T).  
```
Where the first argument is the field name, the second is the day variable, and the third is the timeframe variable. In this case we are getting the schedule for history. 

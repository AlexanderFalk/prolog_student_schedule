# prolog_student_schedule
This program states the relationsship between students fields, their rooms, and schedules.  
To explain the relationsship:  
* There are fields, which are the different studies  
* There are rooms, which a field can be assigned to. Rooms are sorted after a floor-roomnumber principle like: R202, where the first number is the floor and the last two are the roomnumber.  
* There are days, which is determined in weekdays from Monday to Friday.  
* Each Day is divided into two timeframes. Morningframe: **08.30 - 12.00** . Afternoonframe: **12.30 - 16.00**  
* Each field has a room assigned  
* Each field has a day and timeframe assigned  
  
  
The above are facts and there has been assigned rules to retrieve a fields room or their schedule.  
You can retrieve it by example entering in the Prolog (SWIPL) CLI:  
```
  schedule(F, D, T).  
```
Where the first argument is the field name, the second is the day variable, and the third is the timeframe variable. In this case we are getting the schedule for history.  
There is also er second rule with in one more argument:  
```
  schedule(F,D,T,R).
```
It is the same as above, but it has added roomnumber as well.  
Below is an example of output from trying to retrieve a fields days and timeframes:
```

?- schedule(law,D,T).
D = monday,
T = 830-1200 ;
D = wednesday,
T = 830-1200 ;
D = friday,
T = 1230-1600.

```

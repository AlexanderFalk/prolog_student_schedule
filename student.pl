field(accounting).
field(art_and_design).
field(biosciences).
field(computer_science).
field(software_development).
field(history).
field(law).
field(music).


room(r001).
room(r002).
room(r101).
room(r102).
room(r201).
room(r202).
room(r301).
room(r302).


day(monday).
day(tuesday).
day(wednesday).
day(thursday).
day(friday).

timeframe(0830-1200).
timeframe(1230-1600).

mondayMorning(monday,0830-1200).
mondayAfternoon(monday,1230-1600).
tuesdayMorning(tuesday,0830-1200).
tuesdayAfternoon(tuesday,1230-1600).
wednesdayMorning(wednesday,0830-1200).
wednesdayAfternoon(wednesday,1230-1600).
thursdayMorning(thursday,0830-1200).
thursdayAfternoon(thursay,1230-1600).
fridayMorning(friday,0830-1200).
fridayAfternoon(friday,1230-1600).

assign_field_to_room(accounting,r001).
assign_field_to_room(art_and_design,r002).
assign_field_to_room(biosciences, r101).
assign_field_to_room(computer_science,r102).
assign_field_to_room(software_development,r201).
assign_field_to_room(history,r202).
assign_field_to_room(law,r301).
assign_field_to_room(music,r302).

assign_field_to_day(accounting,tuesday,0830-1200).
assign_field_to_day(accounting,wednesday,1230-1600).
assign_field_to_day(accounting,thursday,1230-1600).
assign_field_to_day(art_and_design,monday,0830-1200).
assign_field_to_day(art_and_design,tuesday,0830-1200).
assign_field_to_day(art_and_design,friday,1230-1600).
assign_field_to_day(biosciences,tuesday,0830-1200).
assign_field_to_day(biosciences,thursday,1230-1600).
assign_field_to_day(computer_science,tuesday,1230-1600).
assign_field_to_day(computer_science,wednesday,0830-1200).
assign_field_to_day(computer_science,thursday,0830-1200).
assign_field_to_day(music, wednesday,1230-1600).
assign_field_to_day(music, thursday,0830-1200).
assign_field_to_day(law, monday,0830-1200).
assign_field_to_day(law, wednesday,0830-1200).
assign_field_to_day(law, friday,1230-1600).
assign_field_to_day(history, monday,1230-1600).
assign_field_to_day(history, tuesday,0830-1200).
assign_field_to_day(history, thursday,1230-1600).
assign_field_to_day(software_development, tuesday,1230-1600).
assign_field_to_day(software_development, wednesday,0830-1200).
assign_field_to_day(software_development, thursday,0830-1200).


findRoom(F,R):-
	field(F),
	assign_field_to_room(F,R).

findField(F,R):-
	room(R),
	assign_field_to_room(F,R).


schedule(F,D,T):-
	field(F),
	assign_field_to_day(F,D,T).
	

schedule(F,D,T,R):-
	field(F),
        findRoom(F,R),
        assign_field_to_day(F,D,T).	

select 

r.date,
s.first_name,
s.last_name,
s.hourly_rate,
sh.start_time,
sh.end_time,
((hour(timediff(sh.end_time,sh.start_time))*60 + minute(timediff(sh.end_time,sh.start_time))))/60 as hour_in_shift,
((hour(timediff(sh.end_time,sh.start_time))*60 + minute(timediff(sh.end_time,sh.start_time))))/60*s.hourly_rate as staff_cost


from 
rota_data r

left join staff_data s on r.staff_id=s.staff_id
left join shift_data sh on r.shift_id=sh.shift_id
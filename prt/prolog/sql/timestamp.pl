% Copyright (c) 2019 Prolobjectlink Project

% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:

% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.

% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.

% Author: Jose Zalacain

:-consult('../../../obj/prolobject.pl').

timestamp(Var0,Var1) :- 
	object_new('java.sql.Timestamp',[Var0],Var1).

timestamp(Var0,Var1,Var2,Var3,Var4,Var5,Var6,Var7) :- 
	object_new('java.sql.Timestamp',[Var0,Var0,Var0,Var0,Var0,Var0,Var0],Var7).

timestamp_to_g_m_t_string(Var0,Var1) :- 
	object_call(Var0,toGMTString,[],Var1).

timestamp_get_year(Var0,Var1) :- 
	object_call(Var0,getYear,[],Var1).

timestamp_notify_all(Var0) :- 
	object_call(Var0,notifyAll,[],Var1).

timestamp_compare_to(Var0,Var1,Var2) :- 
	object_call(Var0,compareTo,[Var0],Var2).

timestamp_compare_to(Var0,Var1,Var2) :- 
	object_call(Var0,compareTo,[Var0],Var2).

timestamp_compare_to(Var0,Var1,Var2) :- 
	object_call(Var0,compareTo,[Var0],Var2).

timestamp_set_year(Var0,Var1) :- 
	object_call(Var0,setYear,[Var0],Var2).

timestamp_get_month(Var0,Var1) :- 
	object_call(Var0,getMonth,[],Var1).

timestamp_wait(Var0,Var1,Var2) :- 
	object_call(Var0,wait,[Var0,Var0],Var3).

timestamp_get_nanos(Var0,Var1) :- 
	object_call(Var0,getNanos,[],Var1).

timestamp_set_hours(Var0,Var1) :- 
	object_call(Var0,setHours,[Var0],Var2).

timestamp_wait(Var0,Var1) :- 
	object_call(Var0,wait,[Var0],Var2).

timestamp_after(Var0,Var1,Var2) :- 
	object_call(Var0,after,[Var0],Var2).

timestamp_after(Var0,Var1,Var2) :- 
	object_call(Var0,after,[Var0],Var2).

timestamp_set_date(Var0,Var1) :- 
	object_call(Var0,setDate,[Var0],Var2).

timestamp_from(Var0,Var1,Var2) :- 
	object_call(Var0,from,[Var0],Var2).

timestamp_from(Var0,Var1,Var2) :- 
	object_call(Var0,from,[Var0],Var2).

timestamp_get_date(Var0,Var1) :- 
	object_call(Var0,getDate,[],Var1).

timestamp_get_timezone_offset(Var0,Var1) :- 
	object_call(Var0,getTimezoneOffset,[],Var1).

timestamp_parse(Var0,Var1,Var2) :- 
	object_call(Var0,parse,[Var0],Var2).

timestamp_to_string(Var0,Var1) :- 
	object_call(Var0,toString,[],Var1).

timestamp_hash_code(Var0,Var1) :- 
	object_call(Var0,hashCode,[],Var1).

timestamp_set_minutes(Var0,Var1) :- 
	object_call(Var0,setMinutes,[Var0],Var2).

timestamp_set_seconds(Var0,Var1) :- 
	object_call(Var0,setSeconds,[Var0],Var2).

timestamp_set_nanos(Var0,Var1) :- 
	object_call(Var0,setNanos,[Var0],Var2).

timestamp_notify(Var0) :- 
	object_call(Var0,notify,[],Var1).

timestamp_to_local_date_time(Var0,Var1) :- 
	object_call(Var0,toLocalDateTime,[],Var1).

timestamp_set_month(Var0,Var1) :- 
	object_call(Var0,setMonth,[Var0],Var2).

timestamp_get_day(Var0,Var1) :- 
	object_call(Var0,getDay,[],Var1).

timestamp_get_seconds(Var0,Var1) :- 
	object_call(Var0,getSeconds,[],Var1).

timestamp_get_minutes(Var0,Var1) :- 
	object_call(Var0,getMinutes,[],Var1).

timestamp_get_time(Var0,Var1) :- 
	object_call(Var0,getTime,[],Var1).

timestamp_u_t_c(Var0,Var1,Var2,Var3,Var4,Var5,Var6,Var7) :- 
	object_call(Var0,'UTC',[Var0,Var0,Var0,Var0,Var0,Var0],Var7).

timestamp_set_time(Var0,Var1) :- 
	object_call(Var0,setTime,[Var0],Var2).

timestamp_value_of(Var0,Var1,Var2) :- 
	object_call(Var0,valueOf,[Var0],Var2).

timestamp_value_of(Var0,Var1,Var2) :- 
	object_call(Var0,valueOf,[Var0],Var2).

timestamp_clone(Var0,Var1) :- 
	object_call(Var0,clone,[],Var1).

timestamp_to_instant(Var0,Var1) :- 
	object_call(Var0,toInstant,[],Var1).

timestamp_get_hours(Var0,Var1) :- 
	object_call(Var0,getHours,[],Var1).

timestamp_get_class(Var0,Var1) :- 
	object_call(Var0,getClass,[],Var1).

timestamp_wait(Var0) :- 
	object_call(Var0,wait,[],Var1).

timestamp_before(Var0,Var1,Var2) :- 
	object_call(Var0,before,[Var0],Var2).

timestamp_before(Var0,Var1,Var2) :- 
	object_call(Var0,before,[Var0],Var2).

timestamp_equals(Var0,Var1,Var2) :- 
	object_call(Var0,equals,[Var0],Var2).

timestamp_equals(Var0,Var1,Var2) :- 
	object_call(Var0,equals,[Var0],Var2).

timestamp_to_locale_string(Var0,Var1) :- 
	object_call(Var0,toLocaleString,[],Var1).

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

:-consult('../../../../obj/prolobject.pl').

unicast_remote_object_clone(Var0,Var1) :- 
	object_call(Var0,clone,[],Var1).

unicast_remote_object_set_log(Var0,Var1) :- 
	object_call(Var0,setLog,[Var0],Var2).

unicast_remote_object_notify_all(Var0) :- 
	object_call(Var0,notifyAll,[],Var1).

unicast_remote_object_get_client_host(Var0,Var1) :- 
	object_call(Var0,getClientHost,[],Var1).

unicast_remote_object_hash_code(Var0,Var1) :- 
	object_call(Var0,hashCode,[],Var1).

unicast_remote_object_get_class(Var0,Var1) :- 
	object_call(Var0,getClass,[],Var1).

unicast_remote_object_equals(Var0,Var1,Var2) :- 
	object_call(Var0,equals,[Var0],Var2).

unicast_remote_object_to_stub(Var0,Var1,Var2) :- 
	object_call(Var0,toStub,[Var0],Var2).

unicast_remote_object_notify(Var0) :- 
	object_call(Var0,notify,[],Var1).

unicast_remote_object_export_object(Var0,Var1,Var2,Var3,Var4,Var5) :- 
	object_call(Var0,exportObject,[Var0,Var0,Var0,Var0],Var5).

unicast_remote_object_to_string(Var0,Var1) :- 
	object_call(Var0,toString,[],Var1).

unicast_remote_object_export_object(Var0,Var1,Var2) :- 
	object_call(Var0,exportObject,[Var0],Var2).

unicast_remote_object_unexport_object(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,unexportObject,[Var0,Var0],Var3).

unicast_remote_object_wait(Var0) :- 
	object_call(Var0,wait,[],Var1).

unicast_remote_object_get_ref(Var0,Var1) :- 
	object_call(Var0,getRef,[],Var1).

unicast_remote_object_wait(Var0,Var1) :- 
	object_call(Var0,wait,[Var0],Var2).

unicast_remote_object_export_object(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,exportObject,[Var0,Var0],Var3).

unicast_remote_object_get_log(Var0,Var1) :- 
	object_call(Var0,getLog,[],Var1).

unicast_remote_object_wait(Var0,Var1,Var2) :- 
	object_call(Var0,wait,[Var0,Var0],Var3).

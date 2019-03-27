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

dynamic_implementation(Var0) :- 
	object_new('org.omg.CORBA.DynamicImplementation',[],Var0).

dynamic_implementation__create_request(Var0,Var1,Var2,Var3,Var4,Var5,Var6,Var7) :- 
	object_call(Var0,'_create_request',[Var0,Var0,Var0,Var0,Var0,Var0],Var7).

dynamic_implementation__invoke(Var0,Var1,Var2) :- 
	object_call(Var0,'_invoke',[Var0],Var2).

dynamic_implementation__create_request(Var0,Var1,Var2,Var3,Var4,Var5) :- 
	object_call(Var0,'_create_request',[Var0,Var0,Var0,Var0],Var5).

dynamic_implementation__set_delegate(Var0,Var1) :- 
	object_call(Var0,'_set_delegate',[Var0],Var2).

dynamic_implementation_hash_code(Var0,Var1) :- 
	object_call(Var0,hashCode,[],Var1).

dynamic_implementation_get_class(Var0,Var1) :- 
	object_call(Var0,getClass,[],Var1).

dynamic_implementation__orb(Var0,Var1) :- 
	object_call(Var0,'_orb',[],Var1).

dynamic_implementation__get_interface_def(Var0,Var1) :- 
	object_call(Var0,'_get_interface_def',[],Var1).

dynamic_implementation__ids(Var0,Var1) :- 
	object_call(Var0,'_ids',[],Var1).

dynamic_implementation__get_policy(Var0,Var1,Var2) :- 
	object_call(Var0,'_get_policy',[Var0],Var2).

dynamic_implementation__duplicate(Var0,Var1) :- 
	object_call(Var0,'_duplicate',[],Var1).

dynamic_implementation_wait(Var0) :- 
	object_call(Var0,wait,[],Var1).

dynamic_implementation_wait(Var0,Var1) :- 
	object_call(Var0,wait,[Var0],Var2).

dynamic_implementation__release(Var0) :- 
	object_call(Var0,'_release',[],Var1).

dynamic_implementation_wait(Var0,Var1,Var2) :- 
	object_call(Var0,wait,[Var0,Var0],Var3).

dynamic_implementation__is_a(Var0,Var1,Var2) :- 
	object_call(Var0,'_is_a',[Var0],Var2).

dynamic_implementation__request(Var0,Var1,Var2) :- 
	object_call(Var0,'_request',[Var0],Var2).

dynamic_implementation__get_delegate(Var0,Var1) :- 
	object_call(Var0,'_get_delegate',[],Var1).

dynamic_implementation__release_reply(Var0,Var1) :- 
	object_call(Var0,'_releaseReply',[Var0],Var2).

dynamic_implementation__servant_preinvoke(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,'_servant_preinvoke',[Var0,Var0],Var3).

dynamic_implementation_notify(Var0) :- 
	object_call(Var0,notify,[],Var1).

dynamic_implementation_notify_all(Var0) :- 
	object_call(Var0,notifyAll,[],Var1).

dynamic_implementation__is_local(Var0,Var1) :- 
	object_call(Var0,'_is_local',[],Var1).

dynamic_implementation__request(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,'_request',[Var0,Var0],Var3).

dynamic_implementation__get_domain_managers(Var0,Var1) :- 
	object_call(Var0,'_get_domain_managers',[],Var1).

dynamic_implementation__non_existent(Var0,Var1) :- 
	object_call(Var0,'_non_existent',[],Var1).

dynamic_implementation__hash(Var0,Var1,Var2) :- 
	object_call(Var0,'_hash',[Var0],Var2).

dynamic_implementation__servant_postinvoke(Var0,Var1) :- 
	object_call(Var0,'_servant_postinvoke',[Var0],Var2).

dynamic_implementation__set_policy_override(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,'_set_policy_override',[Var0,Var0],Var3).

dynamic_implementation_invoke(Var0,Var1) :- 
	object_call(Var0,invoke,[Var0],Var2).

dynamic_implementation_equals(Var0,Var1,Var2) :- 
	object_call(Var0,equals,[Var0],Var2).

dynamic_implementation__is_equivalent(Var0,Var1,Var2) :- 
	object_call(Var0,'_is_equivalent',[Var0],Var2).

dynamic_implementation_to_string(Var0,Var1) :- 
	object_call(Var0,toString,[],Var1).

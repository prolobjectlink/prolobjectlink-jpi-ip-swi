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

unresolved_permission(Var0,Var1,Var2,Var3,Var4) :- 
	object_new('java.security.UnresolvedPermission',[Var0,Var0,Var0,Var0],Var4).

unresolved_permission_to_string(Var0,Var1) :- 
	object_call(Var0,toString,[],Var1).

unresolved_permission_wait(Var0,Var1) :- 
	object_call(Var0,wait,[Var0],Var2).

unresolved_permission_get_class(Var0,Var1) :- 
	object_call(Var0,getClass,[],Var1).

unresolved_permission_hash_code(Var0,Var1) :- 
	object_call(Var0,hashCode,[],Var1).

unresolved_permission_wait(Var0) :- 
	object_call(Var0,wait,[],Var1).

unresolved_permission_wait(Var0,Var1,Var2) :- 
	object_call(Var0,wait,[Var0,Var0],Var3).

unresolved_permission_implies(Var0,Var1,Var2) :- 
	object_call(Var0,implies,[Var0],Var2).

unresolved_permission_notify(Var0) :- 
	object_call(Var0,notify,[],Var1).

unresolved_permission_get_name(Var0,Var1) :- 
	object_call(Var0,getName,[],Var1).

unresolved_permission_get_actions(Var0,Var1) :- 
	object_call(Var0,getActions,[],Var1).

unresolved_permission_get_unresolved_type(Var0,Var1) :- 
	object_call(Var0,getUnresolvedType,[],Var1).

unresolved_permission_equals(Var0,Var1,Var2) :- 
	object_call(Var0,equals,[Var0],Var2).

unresolved_permission_get_unresolved_actions(Var0,Var1) :- 
	object_call(Var0,getUnresolvedActions,[],Var1).

unresolved_permission_get_unresolved_name(Var0,Var1) :- 
	object_call(Var0,getUnresolvedName,[],Var1).

unresolved_permission_new_permission_collection(Var0,Var1) :- 
	object_call(Var0,newPermissionCollection,[],Var1).

unresolved_permission_notify_all(Var0) :- 
	object_call(Var0,notifyAll,[],Var1).

unresolved_permission_get_unresolved_certs(Var0,Var1) :- 
	object_call(Var0,getUnresolvedCerts,[],Var1).

unresolved_permission_check_guard(Var0,Var1) :- 
	object_call(Var0,checkGuard,[Var0],Var2).

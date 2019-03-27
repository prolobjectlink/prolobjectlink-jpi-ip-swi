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

string_character_iterator_DONE(Var0) :- 
	object_get('java.text.StringCharacterIterator',done,Var0).

string_character_iterator(Var0,Var1,Var2,Var3,Var4) :- 
	object_new('java.text.StringCharacterIterator',[Var0,Var0,Var0,Var0],Var4).

string_character_iterator(Var0,Var1) :- 
	object_new('java.text.StringCharacterIterator',[Var0],Var1).

string_character_iterator(Var0,Var1,Var2) :- 
	object_new('java.text.StringCharacterIterator',[Var0,Var0],Var2).

string_character_iterator_previous(Var0,Var1) :- 
	object_call(Var0,previous,[],Var1).

string_character_iterator_current(Var0,Var1) :- 
	object_call(Var0,current,[],Var1).

string_character_iterator_notify(Var0) :- 
	object_call(Var0,notify,[],Var1).

string_character_iterator_first(Var0,Var1) :- 
	object_call(Var0,first,[],Var1).

string_character_iterator_notify_all(Var0) :- 
	object_call(Var0,notifyAll,[],Var1).

string_character_iterator_hash_code(Var0,Var1) :- 
	object_call(Var0,hashCode,[],Var1).

string_character_iterator_last(Var0,Var1) :- 
	object_call(Var0,last,[],Var1).

string_character_iterator_wait(Var0,Var1) :- 
	object_call(Var0,wait,[Var0],Var2).

string_character_iterator_equals(Var0,Var1,Var2) :- 
	object_call(Var0,equals,[Var0],Var2).

string_character_iterator_wait(Var0,Var1,Var2) :- 
	object_call(Var0,wait,[Var0,Var0],Var3).

string_character_iterator_set_index(Var0,Var1,Var2) :- 
	object_call(Var0,setIndex,[Var0],Var2).

string_character_iterator_wait(Var0) :- 
	object_call(Var0,wait,[],Var1).

string_character_iterator_to_string(Var0,Var1) :- 
	object_call(Var0,toString,[],Var1).

string_character_iterator_get_begin_index(Var0,Var1) :- 
	object_call(Var0,getBeginIndex,[],Var1).

string_character_iterator_get_end_index(Var0,Var1) :- 
	object_call(Var0,getEndIndex,[],Var1).

string_character_iterator_get_class(Var0,Var1) :- 
	object_call(Var0,getClass,[],Var1).

string_character_iterator_next(Var0,Var1) :- 
	object_call(Var0,next,[],Var1).

string_character_iterator_get_index(Var0,Var1) :- 
	object_call(Var0,getIndex,[],Var1).

string_character_iterator_clone(Var0,Var1) :- 
	object_call(Var0,clone,[],Var1).

string_character_iterator_set_text(Var0,Var1) :- 
	object_call(Var0,setText,[Var0],Var2).

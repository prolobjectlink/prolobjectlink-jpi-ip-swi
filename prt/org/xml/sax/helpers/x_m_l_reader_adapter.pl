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

:-consult('../../../../../obj/prolobject.pl').

x_m_l_reader_adapter(Var0,Var1) :- 
	object_new('org.xml.sax.helpers.XMLReaderAdapter',[Var0],Var1).

x_m_l_reader_adapter(Var0) :- 
	object_new('org.xml.sax.helpers.XMLReaderAdapter',[],Var0).

x_m_l_reader_adapter_set_entity_resolver(Var0,Var1) :- 
	object_call(Var0,setEntityResolver,[Var0],Var2).

x_m_l_reader_adapter_end_prefix_mapping(Var0,Var1) :- 
	object_call(Var0,endPrefixMapping,[Var0],Var2).

x_m_l_reader_adapter_start_document(Var0) :- 
	object_call(Var0,startDocument,[],Var1).

x_m_l_reader_adapter_to_string(Var0,Var1) :- 
	object_call(Var0,toString,[],Var1).

x_m_l_reader_adapter_start_prefix_mapping(Var0,Var1,Var2) :- 
	object_call(Var0,startPrefixMapping,[Var0,Var0],Var3).

x_m_l_reader_adapter_equals(Var0,Var1,Var2) :- 
	object_call(Var0,equals,[Var0],Var2).

x_m_l_reader_adapter_set_d_t_d_handler(Var0,Var1) :- 
	object_call(Var0,setDTDHandler,[Var0],Var2).

x_m_l_reader_adapter_skipped_entity(Var0,Var1) :- 
	object_call(Var0,skippedEntity,[Var0],Var2).

x_m_l_reader_adapter_set_document_locator(Var0,Var1) :- 
	object_call(Var0,setDocumentLocator,[Var0],Var2).

x_m_l_reader_adapter_start_element(Var0,Var1,Var2,Var3,Var4) :- 
	object_call(Var0,startElement,[Var0,Var0,Var0,Var0],Var5).

x_m_l_reader_adapter_set_error_handler(Var0,Var1) :- 
	object_call(Var0,setErrorHandler,[Var0],Var2).

x_m_l_reader_adapter_set_locale(Var0,Var1) :- 
	object_call(Var0,setLocale,[Var0],Var2).

x_m_l_reader_adapter_notify(Var0) :- 
	object_call(Var0,notify,[],Var1).

x_m_l_reader_adapter_notify_all(Var0) :- 
	object_call(Var0,notifyAll,[],Var1).

x_m_l_reader_adapter_parse(Var0,Var1) :- 
	object_call(Var0,parse,[Var0],Var2).

x_m_l_reader_adapter_parse(Var0,Var1) :- 
	object_call(Var0,parse,[Var0],Var2).

x_m_l_reader_adapter_processing_instruction(Var0,Var1,Var2) :- 
	object_call(Var0,processingInstruction,[Var0,Var0],Var3).

x_m_l_reader_adapter_end_document(Var0) :- 
	object_call(Var0,endDocument,[],Var1).

x_m_l_reader_adapter_hash_code(Var0,Var1) :- 
	object_call(Var0,hashCode,[],Var1).

x_m_l_reader_adapter_characters(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,characters,[Var0,Var0,Var0],Var4).

x_m_l_reader_adapter_set_document_handler(Var0,Var1) :- 
	object_call(Var0,setDocumentHandler,[Var0],Var2).

x_m_l_reader_adapter_wait(Var0,Var1,Var2) :- 
	object_call(Var0,wait,[Var0,Var0],Var3).

x_m_l_reader_adapter_get_class(Var0,Var1) :- 
	object_call(Var0,getClass,[],Var1).

x_m_l_reader_adapter_ignorable_whitespace(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,ignorableWhitespace,[Var0,Var0,Var0],Var4).

x_m_l_reader_adapter_end_element(Var0,Var1,Var2,Var3) :- 
	object_call(Var0,endElement,[Var0,Var0,Var0],Var4).

x_m_l_reader_adapter_wait(Var0,Var1) :- 
	object_call(Var0,wait,[Var0],Var2).

x_m_l_reader_adapter_wait(Var0) :- 
	object_call(Var0,wait,[],Var1).

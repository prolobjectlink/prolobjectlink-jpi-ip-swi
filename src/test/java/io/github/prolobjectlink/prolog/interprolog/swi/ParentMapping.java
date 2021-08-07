/*-
 * #%L
 * prolobjectlink-jpi-ip-swi
 * %%
 * Copyright (C) 2020 - 2021 Prolobjectlink Project
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * #L%
 */
package io.github.prolobjectlink.prolog.interprolog.swi;

import io.github.prolobjectlink.prolog.PrologProvider;
import io.github.prolobjectlink.prolog.PrologTerm;
import io.github.prolobjectlink.prolog.Prologable;

public class ParentMapping implements Prologable<Parent> {

	@Override
	public Parent fromTerm(PrologProvider provider, PrologTerm t) {
		String name = t.getArgument(0).getFunctor();
		String child = t.getArgument(1).getFunctor();
		Parent parent = new Parent(name, child);
		return parent;
	}

	@Override
	public PrologTerm toTerm(PrologProvider provider, Object o) {
		if (o instanceof Parent) {
			Parent p = (Parent) o;
			String name = p.getParent();
			String child = p.getChild();
			return provider.newStructure("parent", name, child);
		}
		return provider.prologNil();
	}

	@Override
	public PrologTerm toTerm(PrologProvider provider) {
		PrologTerm name = provider.newVariable("Name", 0);
		PrologTerm child = provider.newVariable("Child", 1);
		PrologTerm[] arguments = new PrologTerm[] { name, child };
		return provider.newStructure("parent", arguments);
	}

	@Override
	public Class<Parent> getType() {
		return Parent.class;
	}

}

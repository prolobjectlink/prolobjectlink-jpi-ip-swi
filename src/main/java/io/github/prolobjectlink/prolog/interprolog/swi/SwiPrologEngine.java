/*
 * #%L
 * prolobjectlink-jpi-ip-swi
 * %%
 * Copyright (C) 2012 - 2019 WorkLogic Project
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

import java.util.List;

import io.github.prolobjectlink.prolog.Licenses;
import io.github.prolobjectlink.prolog.PrologEngine;
import io.github.prolobjectlink.prolog.PrologProvider;
import io.github.prolobjectlink.prolog.interprolog.InterPrologEngine;

/**
 * 
 * @author Jose Zalacain
 * @since 1.0
 */
public class SwiPrologEngine extends InterPrologEngine implements PrologEngine {

	protected SwiPrologEngine(PrologProvider provider) {
		super(provider);
	}

	public final String getLicense() {
		return Licenses.BSD_2;
	}

	public final String getVersion() {
		return engine.getPrologNumericVersion();
	}

	public final String getVendor() {
		return "SWI-Prolog";
	}

	public final String getName() {
		return "SWI-Prolog";
	}

	public final List<String> verify() {
		// TODO Auto-generated method stub
		return null;
	}

}

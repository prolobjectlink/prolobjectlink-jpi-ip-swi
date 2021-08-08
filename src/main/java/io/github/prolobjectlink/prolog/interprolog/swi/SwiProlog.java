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

import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.declarativa.interprolog.SWISubprocessEngine;
import com.declarativa.interprolog.TermModel;

import io.github.prolobjectlink.prolog.PrologConverter;
import io.github.prolobjectlink.prolog.PrologEngine;
import io.github.prolobjectlink.prolog.PrologJavaConverter;
import io.github.prolobjectlink.prolog.PrologProvider;
import io.github.prolobjectlink.prolog.interprolog.InterPrologEngine;
import io.github.prolobjectlink.prolog.interprolog.InterPrologProvider;

/**
 * 
 * @author Jose Zalacain
 * @since 1.0
 */
public class SwiProlog extends InterPrologProvider implements PrologProvider {

	static {
		try {
			String swidir = System.getenv("SWI_DIRECTORY");
			if (swidir == null) {
				throw new UnsatisfiedLinkError("Don't forget define SWI_DIRECTORY enviroment variable");
			}
			StringBuilder builder = new StringBuilder();
			builder.append(swidir);
			builder.append("/bin");
			String swiPath = "" + builder + "";
			swiPath = swiPath.replace('/', File.separatorChar);
			swiPath = swiPath.replace('\\', File.separatorChar);
			Logger.getLogger(SwiProlog.class.getName()).log(Level.INFO, swiPath);
			InterPrologEngine.engine = new SWISubprocessEngine(swiPath);
		} catch (UnsatisfiedLinkError e) {
			Logger.getLogger(SwiProlog.class.getName()).log(Level.SEVERE, null, e);
		}
	}

	public SwiProlog() {
		super(new SwiPrologConverter());
	}

	SwiProlog(PrologConverter<TermModel> converter) {
		super(converter);
	}

	public PrologJavaConverter getJavaConverter() {
		return new SwiPrologJavaConverter(this);
	}

	public PrologEngine newEngine() {
		return new SwiPrologEngine(this);
	}

	public PrologEngine newEngine(String path) {
		PrologEngine engine = newEngine();
		engine.consult(path);
		return engine;
	}

	@Override
	public String toString() {
		return "SwiProlog [converter=" + converter + "]";
	}

}

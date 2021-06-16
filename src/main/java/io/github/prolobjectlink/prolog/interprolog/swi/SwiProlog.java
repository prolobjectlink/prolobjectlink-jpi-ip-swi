/*
 * #%L
 * prolobjectlink-jpi-ip-xsb
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

import com.declarativa.interprolog.TermModel;
import com.xsb.interprolog.NativeEngine;

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
			String arch = System.getProperty("os.arch");
			String os = System.getProperty("os.name");
			String xsbdir = System.getenv("XSB_DIRECTORY");
			if (xsbdir == null) {
				throw new UnsatisfiedLinkError("Don't forget define XSB_DIRECTORY enviroment variable");
			}
			StringBuilder builder = new StringBuilder();
			builder.append(xsbdir + "/config/");
			if (os.startsWith("Windows")) {
				if (arch.contains("64")) {
					builder.append("x64");
				} else if (arch.contains("86")) {
					builder.append("x86");
				}
				builder.append("-pc-");
				builder.append("windows");
			} else if (os.equals("Linux")) {
				if (arch.contains("64")) {
					builder.append("x86_64");
				} else if (arch.contains("86")) {
					builder.append("x86");
				}
				// docker don't identify like -pc-
				builder.append("-unknown-");
				builder.append("linux");
				builder.append("-gnu");
			}
			builder.append("/bin");
			String xsbPath = "" + builder + "";
			xsbPath = xsbPath.replace('/', File.separatorChar);
			xsbPath = xsbPath.replace('\\', File.separatorChar);
			Logger.getLogger(SwiProlog.class.getName()).log(Level.INFO, xsbPath);
			InterPrologEngine.engine = new NativeEngine(xsbPath);
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
		return "XsbProlog [converter=" + converter + "]";
	}

}

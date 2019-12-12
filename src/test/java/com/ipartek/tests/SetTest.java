package com.ipartek.tests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.HashSet;

import org.junit.Test;

public class SetTest {

	@Test
	public void test() {

		assertTrue(true);
		assert (2 == 2);
		assertEquals(2, 2);
		assertNull(null);

		HashSet<String> paises = new HashSet<String>();

		assertNotNull(paises);

		paises.add("eh");
		paises.add("eh");
		paises.add("ct");
		paises.add("ct");
		paises.add("fr");
		paises.add("fr");
		paises.add("es");
		paises.add("es");

		assertEquals("mensaje personalizado por si falla", 4, paises.size());
	}

}

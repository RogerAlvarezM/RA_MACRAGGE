package org.gradle.sample;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

public class GreeterTest {
    private Greeter greeter;

    @Before
    public void setUp() throws Exception {
        greeter = new Greeter();
    }

    @Test
    public void test1() throws Exception {
        System.out.println(greeter.getGreeting());
        assertEquals("Hello devops team !!!", greeter.getGreeting());
    }

    @Test
    public void test2() throws Exception {
        assertNotEquals(null, greeter.getGreeting());
    }

    @Test
    public void test3() throws Exception {
        assertNotEquals(' ', greeter.getGreeting());
    }

    @Test
    public void test4() throws Exception {
        assertNotEquals(0.1, greeter.getGreeting());
    }

    @Test
    public void test5() throws Exception {
        assertNotEquals(-1, greeter.getGreeting());
    }
    
    @Test
    public void test6() throws Exception {
        assertNotEquals("message error", greeter.getGreeting());
    } 

    @Test
    public void test7() throws Exception {
        assertNotEquals(null, greeter.getGreeting());
    } 

    @Test
    public void test8() throws Exception {
        assertNotEquals(123456, greeter.getGreeting());
    }
    
    @Test
    public void test9() throws Exception {
        assertNotEquals('#', greeter.getGreeting());
    } 

    @Test
    public void test10() throws Exception {
        assertNotEquals(true, greeter.getGreeting());
    } 
}

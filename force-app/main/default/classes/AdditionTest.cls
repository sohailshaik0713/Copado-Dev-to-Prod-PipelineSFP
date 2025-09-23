@isTest
public class AdditionTest {
    @isTest
    static void testAddPositiveNumbers() {
        Integer result = Addition.add(10, 20);
        System.assertEquals(30, result, '10 + 20 should equal 30');
    }
    
    @isTest
    static void testAddWithZero() {
        Integer result = Addition.add(0, 50);
        System.assertEquals(50, result, '0 + 50 should equal 50');
    }
    
    @isTest
    static void testAddNegativeNumbers() {
        Integer result = Addition.add(-5, -15);
        System.assertEquals(-20, result, '-5 + -15 should equal -20');
    }
}
@isTest
public class UtilityDemoTest {
    
    @isTest
    static void testAdd() {
        System.assertEquals(5, UtilityDemo.add(2, 3));
        System.assertEquals(0, UtilityDemo.add(0, 0));
        System.assertEquals(-1, UtilityDemo.add(-2, 1));
    }
    
    @isTest
    static void testSubtract() {
        System.assertEquals(-1, UtilityDemo.subtract(2, 3));
        System.assertEquals(0, UtilityDemo.subtract(5, 5));
        System.assertEquals(-3, UtilityDemo.subtract(-2, 1));
    }
}
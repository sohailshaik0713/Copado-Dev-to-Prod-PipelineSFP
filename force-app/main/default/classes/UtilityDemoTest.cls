@isTest
public class UtilityDemoTest {
    
    @isTest
    static void testMathMethods() {
        System.assertEquals(5, UtilityDemo.add(2, 3));
        System.assertEquals(-1, UtilityDemo.subtract(2, 3));
        System.assertEquals(6, UtilityDemo.multiply(2, 3));
        System.assertEquals(2, UtilityDemo.divide(6, 3));
        System.assertEquals(null, UtilityDemo.divide(5, 0)); // divide by zero
    }
    
    @isTest
    static void testIsEven() {
        System.assertEquals(true, UtilityDemo.isEven(4));
        System.assertEquals(false, UtilityDemo.isEven(5));
        System.assertEquals(false, UtilityDemo.isEven(null));
    }
    
    @isTest
    static void testReverseString() {
        System.assertEquals('cba', UtilityDemo.reverseString('abc'));
        System.assertEquals('', UtilityDemo.reverseString(null));
        System.assertEquals('', UtilityDemo.reverseString(''));
    }
    
    @isTest
    static void testGetAccountNames() {
        // Test data setup
        List<Account> accList = new List<Account>();
        for(Integer i=0; i<3; i++) {
            accList.add(new Account(Name='TestAcc'+i));
        }
        insert accList;
        
        List<String> names = UtilityDemo.getAccountNames(2);
        System.assertEquals(2, names.size());
        System.assert(names[0].startsWith('TestAcc'));
    }
}
public class UtilityDemo {

    // 1. Addition
    public static Integer add(Integer a, Integer b) {
        return a + b;
    }

    // 2. Subtraction
    public static Integer subtract(Integer a, Integer b) {
        return a - b;
    }

    // 3. Multiplication
    public static Integer multiply(Integer a, Integer b) {
        return a * b;
    }

    // 4. Division (handle divide by zero)
    public static Decimal divide(Integer a, Integer b) {
        if(b == 0){
            return null;
        }
        return ((Decimal)a) / b;
    }

    // 5. Check if number is even
    public static Boolean isEven(Integer n) {
        return n != null && Math.mod(n, 2) == 0;
    }

    // 6. Reverse a String
    public static String reverseString(String input) {
        if(String.isBlank(input)){
            return '';
        }
        String reversed = '';
        for(Integer i = input.length()-1; i >= 0; i--){
            reversed += input.substring(i, i+1);
        }
        return reversed;
    }

    // 7. Get Account Names (query demo)
    public static List<String> getAccountNames(Integer limitSize) {
        List<Account> accs = [
            SELECT Name FROM Account LIMIT :limitSize
        ];
        List<String> names = new List<String>();
        for(Account acc : accs){
            names.add(acc.Name);
        }
        return names;
    }
}
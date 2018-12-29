/*
去掉String字符串中的控制字符
*/
public class str_replace {
    public static void main(String args[]) {
        String Str = new String("^[[32mhello ^[[31mworld ^[[0mmy");

        System.out.println(Str);
        System.out.print("替换后 :\n" );
        Str = Str.replaceAll("\\^\\[\\[\\d+m", "");
        System.out.println(Str);
    }
}
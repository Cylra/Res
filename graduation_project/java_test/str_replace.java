/*
去掉String字符串中的控制字符
*/
public class str_replace {
    public static void main(String args[]) {
        String Str = new String("^[[32mhello ^[[31mworld ^[[0mmy");
        //添加特殊字符,可用vim查看
        Str = new String("<-- [34mDuration:  0:00:22   [32mFlows: 1   [33mTransmitted: 18.27 MiB at 0.0 Kbit/s   [36mReceived: 0.00 MiB at 0.0 Kbit/s   [0m[31mCPU: [0m[31m  2.0%[0m[31m [[0m[31m  2.0%[0m[31m] [0m-->[0K");

        System.out.println(Str);
        System.out.print("替换后 :\n" );
        Str = Str.replaceAll(".?\\[\\d+m", "");
        System.out.println(Str);
    }
}
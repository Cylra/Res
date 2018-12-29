/*
使用java执行shell脚本,并打印输出
*/
import java.io.File;
import java.io.BufferedReader;
import java.io.InputStreamReader;
  
public class runCmd {
    public static void main(String[] args){
        try {
            //path后面记得要加/
            String path="/home/long/Res/graduation_project/java_test/";
            String cmd = "./test.sh";

            ProcessBuilder pb = new ProcessBuilder(cmd);
            //设置shell命令执行的工作目录
            pb.directory(new File(path));
            //合并错误输出到标准输出,相当于: 2>&1
            pb.redirectErrorStream(true);

            Process ps = pb.start();// = Runtime.getRuntime().exec(cmd);
            // ps.waitFor();

            BufferedReader br = new BufferedReader(new InputStreamReader(ps.getInputStream()));
            StringBuffer sb = new StringBuffer();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line).append("\n");
            }
            String result = sb.toString();
            System.out.println(result);
            
            /*无需再单独进行错误输出
            BufferedReader br2 = new BufferedReader(new InputStreamReader(ps.getErrorStream()));
            StringBuffer sb2 = new StringBuffer();
            while ((line = br2.readLine()) != null) {  
                sb2.append(line).append("\n");  
            }  
            result = sb2.toString();  
            System.out.println(result);
            */
            }
        catch (Exception e) {
            e.printStackTrace();
            }
    }
}
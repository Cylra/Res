/*
使用java执行站点查询脚本,并传参,打印输出
*/

import java.io.File;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class runCmd_2 {
    public static void main(String args[]) {
        try
        {
            String[] cmd = {"./1.py", "haha"};
            ProcessBuilder pb = new ProcessBuilder(cmd);
            //设置shell命令执行的工作目录
            String path = "/home/long/";
            pb.directory(new File(path));
            pb.redirectErrorStream(true);

            Process p = pb.start();
            //等待查询结束
            p.waitFor();
            
            BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = "";

            while( (line = br.readLine()) != null)
            {
    			System.out.println(line);
            }
        }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
    }
}
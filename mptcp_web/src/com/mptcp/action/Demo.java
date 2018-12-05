
package com.mptcp.action;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Image;
//import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
//import java.awt.Dimension;
//import java.awt.event.*;
import java.awt.Color;

import javax.swing.*;
import javax.swing.border.TitledBorder;
import javax.swing.event.*;
//import javax.swing.text.*;


public class Demo extends JFrame{
	private JPanel JPtopT;
	private JLabel Tile;
    
	//
	private JPanel JPtop;
    private JPanel JPcenter;
    
    private JPanel Jall;
    private JPanel Jl;
    private JPanel Jr;
    
    private JTextArea area ; 
    //private JTextField t;
    
    private JLabel JLAdd;
    private JLabel JLProtocol;
    private JLabel JLScence;
    private JLabel JLPort;
    //private JLabel JLBan;
    
    private JLabel JLEmpty1;
    private JLabel JLEmpty2;
    private JLabel JLEmpty3;
    private JLabel JLEmpty4;
    private JLabel JLEmpty5;    
    private JLabel JLEmpty6;    
    private JLabel JLEmpty7;
    private JLabel JLEmpty8;
    
    private JScrollPane jsp ;
    private JScrollPane jspAdd ;
    private JComboBox jcbAdd;
    private JComboBox jcbPotocol;
    private JComboBox jcbScence;
    private JComboBox jcbPort;
    
    private JButton JBBan1;

    private JButton JBReset;
    private JButton JBStart;
    private JButton JBliu;
    private JButton JBlu;
    private JButton JIP;
    private ImageIcon img;
    private JLabel Jimg;

    public Demo(){
    
        this.getContentPane().setLayout(new BorderLayout());
        this.setTitle("鍩轰簬IPv6鐨勫璺緞浼犺緭鎶�鏈綉缁滅洿鎾钩鍙�");
       JPtop = new JPanel(new GridLayout(5,4,2,5)); 
      
       JPcenter = new JPanel(new BorderLayout());
       TitledBorder bo1 = new TitledBorder("杈撳嚭");
       bo1.setTitleColor(Color.RED);
       JPcenter.setBorder(bo1);
       
       area = new JTextArea();
       area.setEditable(false);
       
       //
       JPtopT = new JPanel(new BorderLayout());
       //"<html>hello <br> world!</html>",JLabel.CENTER
       Tile = new JLabel("<html><br/>鍩轰簬IPv6鐨勫璺緞浼犺緭鎶�鏈綉缁滅洿鎾钩鍙�<br/></html> ",SwingConstants.CENTER);
       Tile.setFont(new java.awt.Font("Dialog", 1, 20));
       Color co =new Color(135,206,250);
       JPtopT.setBackground(co);
       JPtop.setBackground(co);
       TitledBorder bo = new TitledBorder("閰嶇疆");
       bo.setTitleColor(Color.RED);
       JPtop.setBorder(bo);
       
       Jall = new JPanel(new BorderLayout());
       Jl = new JPanel();
       Jl.setLayout(new BorderLayout());
       ImageIcon img = new ImageIcon("tile9.png");
       JLabel Jimg = new JLabel(img);
       Jl.add(Jimg,BorderLayout.CENTER);
       Jl.setPreferredSize(new Dimension(500,600));
       
       Jr = new JPanel();
       Jr.setLayout(new BorderLayout());
       Jr.setPreferredSize(new Dimension(500,600));
       
       JLAdd = new JLabel("鏈嶅姟鍣ㄥ湴鍧�:",SwingConstants.RIGHT);
       JLProtocol = new JLabel(" 鍗忚:",SwingConstants.RIGHT);
       JLScence = new JLabel("鍦烘櫙:",SwingConstants.RIGHT);
       JLPort = new JLabel("绔彛:",SwingConstants.RIGHT);
       
       
      // JLBan = new JLabel("");
       JLEmpty1 = new JLabel(" ");
       //
       JIP = new JButton("IP鏌ヨ");
       JLEmpty2 = new JLabel(" zhege");
       JLEmpty3 = new JLabel(" ");
       JLEmpty4 = new JLabel(" ");
       JLEmpty5 = new JLabel(" ");
       JLEmpty6 = new JLabel(" ");
       JLEmpty7 = new JLabel(" ");
       JLEmpty8 = new JLabel("    ");
      
       
       String[] strAdd = {"192.168.20.8","192.168.20.69","[2001:250:3801:6e:f243:a7a6:1d71:ffe4]","[2001:250:3801:6e:f243:a7a6:1d71:e6b1]"};
       String[] strPotocol = {"TCP","MPTCP","RTMP"};
       String[] strScence = {"IPv4+Ipv4","IPv4+Ipv6","IPv6+Ipv6"};
       String[] strPort = {"9000","8080","21"};
       
       jcbAdd = new JComboBox(strAdd);
       jcbAdd.setEditable(true);
       jcbAdd.setSelectedItem("");
       
       jcbPotocol = new JComboBox(strPotocol);
       jcbPotocol.setEditable(true);
       jcbPotocol.setSelectedItem("MPTCP");
       
       jcbScence = new JComboBox(strScence);
       jcbScence.setEditable(true);
       jcbScence.setSelectedItem("IPv6+Ipv6");
       
       jcbPort = new JComboBox(strPort);
       jcbPort.setEditable(true);
       jcbPort.setSelectedItem("9000");
       
       JBBan1 = new JButton("绂佺敤");
       
       JBStart = new JButton("鎾斁");
       JBStart.setPreferredSize(new java.awt.Dimension(0,0));
       
       JBReset = new JButton("閲嶇疆");
       JBliu = new JButton("娴侀噺鐩戞帶");
       JBlu =new JButton("閾捐矾鏌ヨ");
       

       
       jsp = new JScrollPane();
       jspAdd = new JScrollPane();
       
       jspAdd.setViewportView(jcbAdd);
       //闅愯棌婊氬姩鏉�
       jspAdd.setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
       jspAdd.setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_NEVER);
                
       
       JPtop.add(JLAdd);
       JPtop.add(jspAdd);
       JPtop.add(JLProtocol);
       JPtop.add(jcbPotocol);
       JPtop.add(JLScence);
       JPtop.add(jcbScence);
       JPtop.add(JLPort);
       JPtop.add(jcbPort);
       JPtop.add(JLEmpty4);
       JPtop.add(JBBan1);
       JPtop.add(JLEmpty5);
 
       JPtop.add(JBliu);
       JPtop.add(JLEmpty6);
       JPtop.add(JBlu);
       JPtop.add(JLEmpty7);
       JPtop.add(JBReset);
       JPtop.add(JLEmpty1);
       JPtop.add(JIP);
       JPtop.add(JLEmpty3);
       JPtop.add(JBStart);
       
      
       area.setBackground(new Color(232,232,255));
       jsp.setViewportView(area);
       JPcenter.add(jsp,BorderLayout.CENTER);
       
       JIP.addActionListener(new ActionListener(){
      
            
            public void actionPerformed(ActionEvent e)
            {
                        
                  BufferedReader br = null;
                    BufferedReader errBr = null;
                    
                    Runtime runtime = Runtime.getRuntime();
                    try
                    {
                            Process proc = runtime.exec("ifconfig");	
                            
                            br = new BufferedReader(new InputStreamReader(proc.getInputStream()));
                            errBr = new BufferedReader(new InputStreamReader(proc.getErrorStream()));
                            
                            String line = "";
                            while( (line = br.readLine()) != null )
                            {
                                    area.append(line+"\n");
                            }
                            String line1 = "";
                            while( (line1 = errBr.readLine()) != null )
                            {
                                    area.append(line1+"\n");
                            }
                            
                    }
                    catch(Exception a)
                    {
                            area.setText("your input is wrong !"+"\n");
                    }
                    finally
                    {
                            
                            try
                            {
                                    if(null != br)
                                            br.close();
                            } 
                            catch (IOException e1)
                            {
                                    e1.printStackTrace();
                            }
                    }
           }
       });
       JBReset.addActionListener(new ActionListener(){
           // @Override
            
            public void actionPerformed(ActionEvent e)
            {
                jcbAdd.setSelectedItem("");
               //jcbPotocol.setSelectedItem("");
                //jcbScence.setSelectedItem("");
               // jcbPort.setSelectedItem("");
                area.setText("");
            }
       });
       JBStart.addActionListener(new CmdProc());
       JBBan1.addActionListener(new ActionListener(){
    	   public void actionPerformed(ActionEvent e)
           {
           //String s = "gnome-terminal -e ffplay rtmp://"+(String)jcbAdd.getSelectedItem()+":1935/live/livestream";
             String s ="nm-connection-editor";
             try {
				Process pro = Runtime.getRuntime().exec(s);
				//pro.
				
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}      
             	
           }
       } );
       JBlu.addActionListener(new ActionListener(){
    	   public void actionPerformed(ActionEvent e)
           {
    		   String s ="gnome-terminal -e wireshark";
    		   try {
				Process pro = Runtime.getRuntime().exec(s);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
           }
       } );
       JBliu.addActionListener(new ActionListener(){
    	   public void actionPerformed(ActionEvent e)
           {
    		   String s ="gnome-terminal -e bwm-ng";
    		   try {
				Process pro = Runtime.getRuntime().exec(s);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
           }
       } );
       JTextField t = new JTextField();
       t = (JTextField)jcbAdd.getEditor().getEditorComponent();
       t.getDocument().addDocumentListener(new DocumentListener(){
       
                     public void insertUpdate(DocumentEvent e) {  
                            List();  
                            }  
  
                    public void removeUpdate(DocumentEvent e) {  
                            //List();  
                            }  
  
                            public void changedUpdate(DocumentEvent e) {  
                            List();  
                            }
                    private void List(){
                        jcbAdd.setPopupVisible(true);
                    
                    }
                });
       JPtopT.add(JPtop,BorderLayout.CENTER);
       JPtopT.add(Tile,BorderLayout.NORTH);
       JPtopT.add(JLEmpty8 , BorderLayout.EAST);
        //configure main panel
       Jr.add(JPtopT,BorderLayout.NORTH);
       //this.getContentPane().add(JPtopT , BorderLayout.NORTH);
       //this.getContentPane().add(JLEmpty8 , BorderLayout.WEST);
       Jr.add(JPcenter,BorderLayout.CENTER);
       //this.getContentPane().add(JPcenter,BorderLayout.CENTER);
        //set main panel parameters
        Jall.add(Jr,BorderLayout.EAST);
        Jall.add(Jl,BorderLayout.WEST);
        
       
       this.getContentPane().add(Jall);
       //this.getContentPane().add(Jr);
       this.setLocation(100,200);
       this.setSize(1000,600);
       this.setVisible(true);
       this.setResizable(!true);
       this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
    
    }
//    
//    public static void main(String[] args)
//        {
//            new Demo();
//        }

//actionListener
    
    private class CmdProc implements ActionListener
    {
            //@Override
            public void actionPerformed(ActionEvent e)
            {
                    //濡備綍鑾峰彇鍙紪杈戠殑涓嬫媺鑿滃崟鐨勫綋鍓嶅�硷紵锛燂紵锛熺劧鍚庤祴鍊肩粰cmd锛侊紒锛� gnome-terminal -x ls|less
                    //String cmd = "gnome-terminal -x ffplay rtmp://"+(String)jcbAdd.getSelectedItem()+":1935/live/livestream;bash";
                    String cmd = "gnome-terminal -x /home/tan/Demo/a";

                    new ProcCmd(cmd).start();
                    
            }
            
    }
    public class ProcCmd extends Thread
    {
    
            String cmd = "";
            
            public ProcCmd(String cmd)
            {
                    this.cmd = cmd;
            }
            
            //@Override
            public void run()
            {
                    BufferedReader br = null;
                    BufferedReader errBr = null;
                    
                    Runtime runtime = Runtime.getRuntime();
                    try
                    {
                            //cmd = "gnome-terminal -e  \"sh -c" + " '"+cmd+"'\"";
                            //System.out.println(cmd);
                            Process proc = runtime.exec(cmd);
                            
                            //proc.waitFor();
                            
                            br = new BufferedReader(new InputStreamReader(proc.getInputStream()));
                            errBr = new BufferedReader(new InputStreamReader(proc.getErrorStream()));
                            
                           // OutHandler errorGobbler = new OutHandler(proc.getErrorStream(), "Error");  
                            //OutHandler outputGobbler = new OutHandler(proc.getInputStream(), "Info");
                            
                           String line = "";
                            while( (line = br.readLine()) != null )
                            {
                                    area.append(line+"\n");
                            }
                            String line1 = "";
                            while( (line1 = errBr.readLine()) != null )
                            {
                                    area.append(line1+"\n");
                            }
                            
                            
                            
                    }
                    catch(Exception a)
                    {
                            area.setText("your input is wrong !"+"\n");
                    }
                    finally
                    {
                            
                            try
                            {
                                    if(null != br)
                                            br.close();
                            } 
                            catch (IOException e1)
                            {
                                    e1.printStackTrace();
                            }
                    }
                    
            }
            }       
    public class OutHandler extends Thread  
    {  
        // 鎺у埗绾跨▼鐘舵��  
        volatile boolean status = true;  
      
        BufferedReader br = null;  
      
        String type = null;  
      
        public OutHandler(InputStream is, String type)  
        {  
            br = new BufferedReader(new InputStreamReader(is));  
            this.type = type;  
        }  
      
        /** 
         * 閲嶅啓绾跨▼閿�姣佹柟娉曪紝瀹夊叏鐨勫叧闂嚎绋� 
         */  
          
        public void destroy()  
        {  
            status = false;  
        }  
      
        /** 
         * 鎵ц杈撳嚭绾跨▼ 
         */  
        public void run()  
        {  
            String msg = null;  
            try  
            {  
                while (status)  
                {  
      
                    if ((msg = br.readLine()) != null)  
                    {  
                        System.out.println(type + "娑堟伅锛�" + msg);  
                    }  
                }  
            }  
            catch (IOException e)  
            {  
                e.printStackTrace();  
            }  
        }  
      
    }  
}
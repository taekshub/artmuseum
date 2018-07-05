package com.multi.myhome1.down;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.myhome1.common.CommonConst;

@Controller
public class DownController {
	@RequestMapping("/down")
	public void download(
			HttpServletRequest req,
			HttpServletResponse res,
			String id, 
			String filename)
	{
		
		ServletContext ctx= req.getServletContext();
		String path = "";
		
		if( id.equals("board"))
			path = ctx.getRealPath(CommonConst.BOARD_PATH);
		System.out.println(path);
		
		
		InputStream in=null;//������ �Է¹ޱ� ���� �ʿ��� Ŭ���� 
		OutputStream out = null;//������ �����ϱ� ���� �ʿ��� Ŭ���� 
		File file=null;  		//������ ã�Ƽ� Stream ��ü�� ������Ѿ��Ѵ�
		boolean skip=false;
		//������ �����ϸ� skip = false 
		//������ �������� ������ skip = true
		
		//1.���� ����, �а�, �ݰ� 
		//1.���Ͽ��� 
		try
		{
			file = new File(path,  filename);
			in = new FileInputStream(file);
		}catch(FileNotFoundException ex)
		{
			skip = true; //������ ������� 
		}
		
		//2.Ŭ���̾�Ʈ���� ������ ���Ͽ� ���� 
		//������ �����ؾ� �Ѵ� 
		
		//���������� ������ ���Ͽ� ���� ������ 
		//���� ������ 
		
		String client = req.getHeader("User-Agent");
		//���� �������� ������ ���� ������ 
		//User-Agent �Ӽ��ȿ� �ִ� 
		
		try
		{
		//�⺻ ���� �����ϱ� 
		res.reset(); //������ ������ ����
		res.setContentType("application/octet-stream");
		//���� �����ϰڴٴ� �ǹ� 
	    res.setHeader("Content-Description",  		"JSP Generated Data");
	 
		if(!skip) //������ ������ �����ϸ� 
		{
			if(client.indexOf("MSIE")!=-1)
			{
				res.setHeader("Content-Disposition","attachment; filename="
				+new String(filename.getBytes("KSC5601"),"ISO8859_1"));
			}
			else
			{
				 // �ѱ� ���ϸ� ó��
                filename = new String( filename.getBytes("utf-8"),  "iso-8859-1");
 
                res.setHeader("Content-Disposition", 
                 "attachment; filename=\"" +  filename + "\"");
                res.setHeader("Content-Type", 
                 "application/octet-stream;charset=utf-8");
 
			}
			
			res.setHeader ("Content-Length",""+file.length() );
			 
	        out = res.getOutputStream();
            byte b[] = new byte[(int)file.length()];
            int leng = 0;
             
            while( (leng = in.read(b)) > 0 ){
                out.write(b,0,leng);
            }
      	}
		
	     out.close();
         in.close();
		}
		catch(Exception e)
		{}
	
	}
}

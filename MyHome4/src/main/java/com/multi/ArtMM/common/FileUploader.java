package com.multi.ArtMM.common;
  
import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/*
 * filePath : ���ε� �� ��θ� �������ָ� �ȴ� 
 * FileUploader.setFilePath("���");
 * FileUploader.upload(MultipartFile ���ϸ��,  
 *                    ��ϵ����ϸ� ���޹��� ����Ʈ)
 *                    
 *  FileUploader.getNewFileName(���ϸ�)
 *  ���ϸ��� �ߺ��ɰ�� ���ϸ��� �ٲ��ִ� �Լ�
 *  sample.txt 
 *  sample(1).txt
 *  sample(2).txt
 *  sample(3).txt
 *                    
 */
public class FileUploader {
	static String filePath ="c:/upload";

	public static String getFilePath() {
		return filePath;
	}
 
	public static void setFilePath(String filePath) {
		FileUploader.filePath = filePath;
		
		File dir = new File(filePath);
		//���� ���ε� ������ �����ϴ��� ã�ƺ��� ���ؼ�
		if( !dir.exists())//������ ������ϸ� 
		{
			System.out.println("��� : " 
		      + dir.mkdirs()); //����� 
		}
		System.out.println(dir);
		
	}
	
	public static boolean upload(
		List<MultipartFile> files, 
		List<String> fileNameList)
	{
		
		//files : ���ε��� ���ϵ� 
		//fileNameList : ���� ���ε� �� 
		//   ���� ���ϸ��� �����ϱ� ���� ����Ʈ 
		
		

		//÷�ε� ������ �����Ѵٸ� 
		if(files!=null && files.size()>0)
		{
			for(MultipartFile f:files) {
			
				System.out.println(f.getOriginalFilename());
				if(f.getOriginalFilename().length()==0)
				{
					fileNameList.add("");
				}
				else
				{
					String filename = 
							getNewFileName(f.getOriginalFilename());
					//���� �̸� �ߺ� �ذ��ؾ� �Ѵ�
					File newFile = new File(filePath + "/"+ filename);
					try {
						f.transferTo(newFile);
					} catch (Exception e) {
						
						e.printStackTrace();
						return false; //���ܻ�Ȳ�߻�������
					}
					fileNameList.add(filename);
				}
			}
		}
	
		return true;  //���� �ƴҶ� 
	}
	
	public static String getNewFileName(String oldName)
	{
		//�������ϸ� : sample1.txt 
		//�ߺ��ɶ� : sample1(1).txt
		
		//1.���ϸ��� ���ϸ�� Ȯ���ڷ� �и� 
		//���ʿ���. ��ġ�� ã�Ƽ� �� �����ķδ� Ȯ����
		//������ ���ϸ����� 
		int pos = oldName.lastIndexOf(".");
		String ext = oldName.substring(pos+1);
		//Ȯ���� (txt)
		String ori = oldName.substring(0, pos);
		//�������ϸ� sample1 
		File newFile = 
		  new File(filePath+"/"+ oldName);
		//�� ������ �̹� �����Ѵٸ� �����̸� ����
		int i=1;
		while(newFile.exists())
		{
			oldName = ori +"("+i+")."+ext;
			//���ο� ���ϸ��� ����� 
			newFile = 
			  new File(filePath+"/"+ oldName);
			 i++;
		}
		System.out.println(filePath+"/"+oldName);
		return oldName;
	}
	
	public static String upload(MultipartFile f)
	{
		
		
		String filename="";
		if(f==null)
			return filename;
		
		if(f.getOriginalFilename().length()!=0)
		{
			filename = 
			getNewFileName(f.getOriginalFilename());
			//���� �̸� �ߺ� �ذ��ؾ� �Ѵ�
			File newFile = new File(filePath + 
					      "/"+ filename);
			try {
				f.transferTo(newFile);
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		return filename;
	}
			
}




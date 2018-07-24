package com.multi.ArtMM.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Util {
	public static String getCode()
	{
		Date date=new Date();
		//���� ��¥�� �ð��� �����´� 
		//SimpleDateFormat ��¥�� �츮�����ϴ� ���� ���·�
		//��ȯ�����ִ� Ŭ���� 
		SimpleDateFormat format1 =
			new SimpleDateFormat("yyyyMMddHHmmss");
		
		//��ü ������ ������ �ȿ� ���� ���ϴ� ������ �Է�
		//yyyy - ���� 
		//MM - ��
		//dd -��
		//HH - 24�ð�  hh :12�ð� 
		//mm -�ҹ����� ��� �ð� 
		//ss - �� 
		//Math.random() : 0.0~1.0������ ��
		//0.0, ~10.0  -> 0~9
 		int n = (int) (Math.random() * 10) + 1;
 		//1~10����
		 
		String code = format1.format(date)+n;
		//format �Լ�ȣ�� (�ð�)�� �ָ� 
		//�ð��� �츮�� ������ ���·� ��ȯ�ϱ� 
		
		return code;
	}
}

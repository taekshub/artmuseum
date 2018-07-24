package com.multi.ArtMM.board.dto;
    
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;
 
public class BoardDto {
	private String pg="0";
	private String sel="all";
	private String key="";
	private String num="";
	
	private String ip_addr="";
	
	private String username="";
	private String seq="";
	private String userid="";
	private String title="";
	private String contents="";
	private String filename1="";
	private String filename2="";
	private String filename3="";
	private String regdate="";
	private String moddate="";
	private String delyn="";
	private String group_id="0";
	private String depth="0";
	private String g_level="0";
	private String hit="0";
	
	private String like="";
	private String dislike="";
	
	

	public String getLike() {
		return like;
	}

	public void setLike(String like) {
		this.like = like;
	}

	public String getDislike() {
		return dislike;
	}

	public void setDislike(String dislike) {
		this.dislike = dislike;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	//������ �޾ƿ��� ���ؼ� �߰��ϴ� �ʵ� 
	List<MultipartFile> files;
	
	//���� �̸� �����ϱ� ���ؼ�
	List<String> fileNameList=
			  new ArrayList<String>();
	
	//�ʵ�� ������ �迭 
	List<String> fieldNameList=
			new ArrayList<String>();
	//fileName1, fileName2, fileName
	
	public List<String> getFileNameList() {
		return fileNameList;
	}

	public List<String> getFieldNameList() {
		return fieldNameList;
	}

	public void setFieldNameList(List<String> fieldNameList) {
		this.fieldNameList = fieldNameList;
	}

	public void setFileNameList(List<String> fileNameList) {
		this.fileNameList = fileNameList;
	}

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	//����Ʈ ������ 
	public BoardDto() 
	{}
	
	//�׽�Ʈ�� ������ 
	public BoardDto(String title)
	{
		this.title = title;
	}
	
	public String getSel() {
		return sel;
	}

	public void setSel(String sel) {
		this.sel = sel;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getFilename1() {
		return filename1;
	}
	public void setFilename1(String filename1) {
		this.filename1 = filename1;
	}
	public String getFilename2() {
		return filename2;
	}
	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}
	public String getFilename3() {
		return filename3;
	}
	public void setFilename3(String filename3) {
		this.filename3 = filename3;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getModdate() {
		return moddate;
	}
	public void setModdate(String moddate) {
		this.moddate = moddate;
	}
	public String getDelyn() {
		return delyn;
	}
	public void setDelyn(String delyn) {
		this.delyn = delyn;
	}
	public String getGroup_id() {
		return group_id;
	}
	public void setGroup_id(String group_id) {
		this.group_id = group_id;
	}
	public String getDepth() {
		return depth;
	}
	public void setDepth(String depth) {
		this.depth = depth;
	}
	public String getG_level() {
		return g_level;
	}
	public void setG_level(String g_level) {
		this.g_level = g_level;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getPg() {
		return pg;
	}

	public void setPg(String pg) {
		this.pg = pg;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getIp_addr() {
		return ip_addr;
	}

	public void setIp_addr(String ip_addr) {
		this.ip_addr = ip_addr;
	}
	
	
	
	
}

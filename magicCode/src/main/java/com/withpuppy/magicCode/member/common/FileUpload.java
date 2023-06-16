package com.withpuppy.magicCode.member.common;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class FileUpload {
	private int maxSize = 10 * 1024 * 1024;
	
	//저장공간을 넘겨주면 파일을 저장하고, 필드값을 리턴한다.
		public HashMap<String, String> upload(HttpServletRequest request, HttpServletResponse response, String dir){
			HashMap<String, String> map = new HashMap<String, String>();
			String saveDir = request.getServletContext().getRealPath(dir); //저장공간
			File attechDir = new File(File.separator + saveDir);
			
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(attechDir);
			fileItemFactory.setSizeThreshold(maxSize);
			
			ServletFileUpload  fileUpload = new ServletFileUpload(fileItemFactory);
			fileUpload.setSizeMax(-1);
			
			try {
				List<FileItem> items = fileUpload.parseRequest(request);
				for(FileItem item : items) {
					if(item.isFormField()) {
						map.put(item.getFieldName(), item.getString("utf-8"));
					}else {  //첨부파일이 존재하면 업로드 처리하고
						if(!item.getName().isEmpty()) {
							int index = item.getName().lastIndexOf(".");
							String pfile = UUID.randomUUID().toString(); //파일명 중복방지를 위해 UUID 사용
							pfile += item.getName().substring(index);  //저장할 파일명 만듬
							File uploadFile = new File(attechDir + File.separator + pfile);
							item.write(uploadFile);  //파일 저장
							map.put("ofile", item.getName());  //원본파일명
							map.put("pfile", pfile);  //변경파일명
						}
					}
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return map;
		}
}

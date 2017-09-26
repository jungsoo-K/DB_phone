package www.DBphone.utility;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Utility {
	
	   /** 
	  * 占쏙옙謗占� 占쏙옙占쏙옙징 占쌨소듸옙
	  * @param totalRecord 占쏙옙체 占쏙옙占쌘듸옙占� 
	  * @param nowPage     占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 
	  * @param recordPerPage 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쌘듸옙 占쏙옙 
	  * @param url 占싱듸옙占쏙옙 占쏙옙占쏙옙占쏙옙 
	  * @param bbsno 占쏙옙占쏙옙占쌜뱄옙호
	  * @return 占쏙옙占쏙옙징 占쏙옙占쏙옙 占쏙옙占쌘울옙
	  */ 
	 public static String pagingR(int totalRecord, int nPage, int recordPerPage,String url,int bbsno,int nowPage, String col, String word){ 
	   int pagePerBlock = 10; // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 
	   int totalPage = (int)(Math.ceil((double)totalRecord/recordPerPage)); // 占쏙옙체 占쏙옙占쏙옙占쏙옙  
	   int totalGrp = (int)(Math.ceil((double)totalPage/pagePerBlock));// 占쏙옙체 占쌓뤄옙 
	   int nowGrp = (int)(Math.ceil((double)nPage/pagePerBlock));    // 占쏙옙占쏙옙 占쌓뤄옙 
	   int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙  
	   int endPage = (nowGrp * pagePerBlock);             // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙   
	    
	   StringBuffer str = new StringBuffer(); 
	    
	   str.append("<style type='text/css'>"); 
	   str.append("  #paging {text-align: center; margin-top: 5px; font-size: 1em;}"); 
	   str.append("  #paging A:link {text-decoration:none; color:black; font-size: 1em;}"); 
	   str.append("  #paging A:hover{text-decoration:none; background-color: #CCCCCC; color:black; font-size: 1em;}"); 
	   str.append("  #paging A:visited {text-decoration:none;color:black; font-size: 1em;}"); 
	   str.append("  .span_box_1{"); 
	   str.append("    text-align: center;");    
	   str.append("    font-size: 1em;"); 
	   str.append("    border: 1px;"); 
	   str.append("    border-style: solid;"); 
	   str.append("    border-color: #cccccc;"); 
	   str.append("    padding:1px 6px 1px 6px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("    margin:1px 2px 1px 2px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("  }"); 
	   str.append("  .span_box_2{"); 
	   str.append("    text-align: center;");    
	   str.append("    background-color: #668db4;"); 
	   str.append("    color: #FFFFFF;"); 
	   str.append("    font-size: 1em;"); 
	   str.append("    border: 1px;"); 
	   str.append("    border-style: solid;"); 
	   str.append("    border-color: #cccccc;"); 
	   str.append("    padding:1px 6px 1px 6px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("    margin:1px 2px 1px 2px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("  }"); 
	   str.append("</style>"); 
	   str.append("<DIV id='paging'>"); 
//	     str.append("占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙: " + nowPage + " / " + totalPage + "  "); 
	 
	   int _nowPage = (nowGrp-1) * pagePerBlock; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
	   if (nowGrp >= 2){ 
	     str.append("<span class='span_box_1'><A href='./"+url+"?nowPage="+nowPage+"&col="+col+"&word="+word+"&bbsno="+bbsno+"&nPage="+_nowPage+"'>占쏙옙占쏙옙</A></span>"); 
	   } 
	 
	   for(int i=startPage; i<=endPage; i++){ 
	     if (i > totalPage){ 
	       break; 
	     } 
	 
	     if (nPage == i){ 
	       str.append("<span class='span_box_2'>"+i+"</span>"); 
	     }else{ 
	       str.append("<span class='span_box_1'><A href='./"+url+"?nowPage="+nowPage+"&col="+col+"&word="+word+"&bbsno="+bbsno+"&nPage="+i+"'>"+i+"</A></span>");   
	     } 
	   } 
	    
	   _nowPage = (nowGrp * pagePerBlock)+1; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
	   if (nowGrp < totalGrp){ 
	     str.append("<span class='span_box_1'><A href='./"+url+"?nowPage="+nowPage+"&col="+col+"&word="+word+"&bbsno="+bbsno+"&nPage="+_nowPage+"'>占쏙옙占쏙옙</A></span>"); 
	   } 
	   str.append("</DIV>"); 
	    
	   return str.toString(); 
	 } 
	
	public static String saveFileSpring30(MultipartFile multipartFile, String basePath) { 
        // input form's parameter name 
        String fileName = ""; 
        // original file name 
        String originalFileName = multipartFile.getOriginalFilename(); 
        // file content type 
        String contentType = multipartFile.getContentType(); 
        // file size 
        long fileSize = multipartFile.getSize(); 
         
        System.out.println("fileSize: " + fileSize); 
        System.out.println("originalFileName: " + originalFileName); 
         
        InputStream inputStream = null; 
        OutputStream outputStream = null; 
 
        try { 
            if( fileSize > 0 ) { // 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占싼다몌옙 
                // 占쏙옙풋 占쏙옙트占쏙옙占쏙옙 占쏙옙쨈占�. 
                inputStream = multipartFile.getInputStream(); 
 
                File oldfile = new File(basePath, originalFileName); 
             
                if ( oldfile.exists()){ 
                    for(int k=0; true; k++){ 
                        //占쏙옙占싹몌옙 占쌩븝옙占쏙옙 占쏙옙占싹깍옙 占쏙옙占쏙옙 占싹뤄옙 占쏙옙호占쏙옙 占쏙옙占쏙옙占싹울옙 
                        //占쏙옙占싹몌옙占쏙옙占쏙옙 占쏙옙占쏙옙 
                        oldfile = new File(basePath,"("+k+")"+originalFileName); 
                     
                        //占쏙옙占쌌듸옙 占쏙옙占싹몌옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占십는다몌옙, 占싹련뱄옙호占쏙옙 
                        //占쏙옙占쏙옙 占쏙옙占싹몌옙 占쌕쏙옙 占쏙옙占쏙옙 
                        if(!oldfile.exists()){ //占쏙옙占쏙옙占쏙옙占쏙옙 占십댐옙 占쏙옙占� 
                            fileName = "("+k+")"+originalFileName; 
                            break; 
                        } 
                    } 
                }else{ 
                    fileName = originalFileName; 
                } 
                //make server full path to save 
                String serverFullPath = basePath + "\\" + fileName; 
                 
                System.out.println("fileName: " + fileName); 
                System.out.println("serverFullPath: " + serverFullPath); 
                 
                outputStream = new FileOutputStream( serverFullPath ); 
  
                // 占쏙옙占쌜몌옙 占쏙옙占쏙옙占�. 
                int readBytes = 0; 
                byte[] buffer = new byte[8192]; 
 
                while((readBytes = inputStream.read(buffer, 0, 8192)) != -1 ) { 
                    outputStream.write( buffer, 0, readBytes ); 
                } 
                outputStream.close(); 
                inputStream.close(); 
                         
            } 
 
        } catch(Exception e) { 
            e.printStackTrace();   
        }finally{ 
             
        } 
         
        return fileName; 
    } 
	
	public static String getCodeValue(String code){
		String value = null;
		Hashtable codes = new Hashtable();
		codes.put("A01", "회占쏙옙占�");
		codes.put("A02", "占쏙옙占쏙옙占쏙옙占쏙옙占�");
		codes.put("A03", "占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙");
		codes.put("A04", "占싻삼옙");
		codes.put("A05", "占쌘울옙占쏙옙");
		codes.put("A06", "占쏙옙占쏙옙占쏙옙");
		codes.put("A07", "占실뤄옙占쏙옙");
		codes.put("A08", "占쏙옙占쏙옙占쏙옙");
		codes.put("A09", "占쏙옙占쏙옙/占쏙옙占�/占쏙옙占쏙옙占쏙옙");
		codes.put("A10", "占쏙옙타");
		
		value = (String)codes.get(code);
		return value;
	}
	/**
     * 占쏙옙占쏙옙,占쏙옙占쏙옙,占쏙옙占쏙옙 占쏙옙짜 占쏙옙占쏙옙占쏙옙占쏙옙
     * @return List- 占쏙옙짜占쏙옙 占쏙옙占쏙옙
     */
    public static List<String> getDay(){
        List<String> list = new ArrayList<String>();
        
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        for(int j = 0; j < 3; j++){
            list.add(sd.format(cal.getTime()));
            cal.add(Calendar.DATE, -1);
        }
        
        return list;
    }
    /**
     * 占쏙옙毬占승ο옙占� 占쏙옙占쏙옙,占쏙옙占쏙옙,占쏙옙占쏙옙占쏙옙짜占쏙옙 占쏙옙
     * @param wdate - 占쏙옙毬占승�
     * @return - true:占쏙옙占쏙옙,占쏙옙占쏙옙,占쏙옙占쏙옙占쏙옙 占쏙옙毬占승ο옙占� 占쏙옙占쏙옙
     *           false:占쏙옙占쏙옙,占쏙옙占쏙옙,占쏙옙占쏙옙 占쏙옙짜占쏙옙 占쏙옙毬占승ο옙占� 占쏙옙 占쌕몌옙
     */
    public static boolean compareDay(String wdate){
        boolean flag = false;
        List<String> list = getDay();
        if(wdate.equals(list.get(0)) 
           || wdate.equals(list.get(1))
           || wdate.equals(list.get(2))){
            flag = true;
        }
          
        return flag;
    }
	
	
/** 
  * SPAN占승그몌옙 占싱울옙占쏙옙 占쌘쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙, 1 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 
  * 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙: 11 / 22   [占쏙옙占쏙옙] 11 12 13 14 15 16 17 18 19 20 [占쏙옙占쏙옙] 
  *  
  * @param totalRecord 占쏙옙체 占쏙옙占쌘듸옙占� 
  * @param nowPage     占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 
  * @param recordPerPage 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쌘듸옙 占쏙옙  
  * @param col 占싯삼옙 占시뤄옙  
  * @param word 占싯삼옙占쏙옙
  * @return 占쏙옙占쏙옙징 占쏙옙占쏙옙 占쏙옙占쌘울옙
  */ 
 public static String paging3(int totalRecord, int nowPage, int recordPerPage, String col, String word){ 
   int pagePerBlock = 10; // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 
   int totalPage = (int)(Math.ceil((double)totalRecord/recordPerPage)); // 占쏙옙체 占쏙옙占쏙옙占쏙옙  
   int totalGrp = (int)(Math.ceil((double)totalPage/pagePerBlock));// 占쏙옙체 占쌓뤄옙 
   int nowGrp = (int)(Math.ceil((double)nowPage/pagePerBlock));    // 占쏙옙占쏙옙 占쌓뤄옙 
   int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙  
   int endPage = (nowGrp * pagePerBlock);             // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙   
    
   StringBuffer str = new StringBuffer(); 
    
   str.append("<style type='text/css'>"); 
   str.append("  #paging {text-align: center; margin-top: 5px; font-size: 1em;}"); 
   str.append("  #paging A:link {text-decoration:none; color:black; font-size: 1em;}"); 
   str.append("  #paging A:hover{text-decoration:none; background-color: #CCCCCC; color:black; font-size: 1em;}"); 
   str.append("  #paging A:visited {text-decoration:none;color:black; font-size: 1em;}"); 
   str.append("  .span_box_1{"); 
   str.append("    text-align: center;");    
   str.append("    font-size: 1em;"); 
   str.append("    border: 1px;"); 
   str.append("    border-style: solid;"); 
   str.append("    border-color: #cccccc;"); 
   str.append("    padding:1px 6px 1px 6px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
   str.append("    margin:1px 2px 1px 2px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
   str.append("  }"); 
   str.append("  .span_box_2{"); 
   str.append("    text-align: center;");    
   str.append("    background-color: #668db4;"); 
   str.append("    color: #FFFFFF;"); 
   str.append("    font-size: 1em;"); 
   str.append("    border: 1px;"); 
   str.append("    border-style: solid;"); 
   str.append("    border-color: #cccccc;"); 
   str.append("    padding:1px 6px 1px 6px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
   str.append("    margin:1px 2px 1px 2px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
   str.append("  }"); 
   str.append("</style>"); 
   str.append("<DIV id='paging'>"); 
//     str.append("占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙: " + nowPage + " / " + totalPage + "  "); 
 
   int _nowPage = (nowGrp-1) * pagePerBlock; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
   if (nowGrp >= 2){ 
     str.append("<span class='span_box_1'><A href='./list.jsp?col="+col+"&word="+word+"&nowPage="+_nowPage+"'>占쏙옙占쏙옙</A></span>"); 
   } 
 
   for(int i=startPage; i<=endPage; i++){ 
     if (i > totalPage){ 
       break; 
     } 
 
     if (nowPage == i){ 
       str.append("<span class='span_box_2'>"+i+"</span>"); 
     }else{ 
       str.append("<span class='span_box_1'><A href='./list.jsp?col="+col+"&word="+word+"&nowPage="+i+"'>"+i+"</A></span>");   
     } 
   } 
    
   _nowPage = (nowGrp * pagePerBlock)+1; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
   if (nowGrp < totalGrp){ 
     str.append("<span class='span_box_1'><A href='./list.jsp?col="+col+"&word="+word+"&nowPage="+_nowPage+"'>占쏙옙占쏙옙</A></span>"); 
   } 
   str.append("</DIV>"); 
    
   return str.toString(); 
 } 
 
 public static String paging2(String url, int totalRecord, int nowPage, int recordPerPage, String col, String word){ 
	   int pagePerBlock = 10; // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 
	   int totalPage = (int)(Math.ceil((double)totalRecord/recordPerPage)); // 占쏙옙체 占쏙옙占쏙옙占쏙옙  
	   int totalGrp = (int)(Math.ceil((double)totalPage/pagePerBlock));// 占쏙옙체 占쌓뤄옙 
	   int nowGrp = (int)(Math.ceil((double)nowPage/pagePerBlock));    // 占쏙옙占쏙옙 占쌓뤄옙 
	   int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙  
	   int endPage = (nowGrp * pagePerBlock);             // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙   
	    
	   StringBuffer str = new StringBuffer(); 
	    
	   str.append("<style type='text/css'>"); 
	   str.append("  #paging {text-align: center; margin-top: 5px; font-size: 1em;}"); 
	   str.append("  #paging A:link {text-decoration:none; color:black; font-size: 1em;}"); 
	   str.append("  #paging A:hover{text-decoration:none; background-color: #CCCCCC; color:black; font-size: 1em;}"); 
	   str.append("  #paging A:visited {text-decoration:none;color:black; font-size: 1em;}"); 
	   str.append("  .span_box_1{"); 
	   str.append("    text-align: center;");    
	   str.append("    font-size: 1em;"); 
	   str.append("    border: 1px;"); 
	   str.append("    border-style: solid;"); 
	   str.append("    border-color: #cccccc;"); 
	   str.append("    padding:1px 6px 1px 6px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("    margin:1px 2px 1px 2px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("  }"); 
	   str.append("  .span_box_2{"); 
	   str.append("    text-align: center;");    
	   str.append("    background-color: #668db4;"); 
	   str.append("    color: #FFFFFF;"); 
	   str.append("    font-size: 1em;"); 
	   str.append("    border: 1px;"); 
	   str.append("    border-style: solid;"); 
	   str.append("    border-color: #cccccc;"); 
	   str.append("    padding:1px 6px 1px 6px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("    margin:1px 2px 1px 2px; /*占쏙옙, 占쏙옙占쏙옙占쏙옙, 占싣뤄옙, 占쏙옙占쏙옙*/"); 
	   str.append("  }"); 
	   str.append("</style>"); 
	   str.append("<DIV id='paging'>"); 
//	     str.append("占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙: " + nowPage + " / " + totalPage + "  "); 
	 
	   int _nowPage = (nowGrp-1) * pagePerBlock; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
	   if (nowGrp >= 2){ 
	     str.append("<span class='span_box_1'><A href='./"+url+"?col="+col+"&word="+word+"&nowPage="+_nowPage+"'>占쏙옙占쏙옙</A></span>"); 
	   } 
	 
	   for(int i=startPage; i<=endPage; i++){ 
	     if (i > totalPage){ 
	       break; 
	     } 
	 
	     if (nowPage == i){ 
	       str.append("<span class='span_box_2'>"+i+"</span>"); 
	     }else{ 
	       str.append("<span class='span_box_1'><A href='./"+url+"?col="+col+"&word="+word+"&nowPage="+i+"'>"+i+"</A></span>");   
	     } 
	   } 
	    
	   _nowPage = (nowGrp * pagePerBlock)+1; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
	   if (nowGrp < totalGrp){ 
	     str.append("<span class='span_box_1'><A href='./"+url+"?col="+col+"&word="+word+"&nowPage="+_nowPage+"'>占쏙옙占쏙옙</A></span>"); 
	   } 
	   str.append("</DIV>"); 
	    
	   return str.toString(); 
	 } 
 
/** 
  * 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙징, 1 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 
  * 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙: 11 / 22   [占쏙옙占쏙옙] 11 12 13 14 15 16 17 18 19 20 [占쏙옙占쏙옙] 
  *  
  * @param totalRecord 占쏙옙체 占쏙옙占쌘듸옙占� 
  * @param nowPage     占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 
  * @param recordPerPage 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占� 占쏙옙占쌘듸옙 占쏙옙
  * @param col 占싯삼옙 占시뤄옙  
  * @param word 占싯삼옙占쏙옙
  * @return 占쏙옙占쏙옙징 占쏙옙占쏙옙 占쏙옙占쌘울옙
  */ 
 public static String paging(int totalRecord, int nowPage, int recordPerPage, String col, String word){ 
   int pagePerBlock = 10; // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 
   int totalPage = (int)(Math.ceil((double)totalRecord/recordPerPage));// 占쏙옙체 占쏙옙占쏙옙占쏙옙  
   int totalGrp = (int)(Math.ceil((double)totalPage/pagePerBlock));// 占쏙옙체 占쌓뤄옙 
   int nowGrp = (int)(Math.ceil((double)nowPage/pagePerBlock));    // 占쏙옙占쏙옙 占쌓뤄옙 
   int startPage = ((nowGrp - 1) * pagePerBlock) + 1; // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙  
   int endPage = (nowGrp * pagePerBlock);             // 특占쏙옙 占쌓뤄옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占� 占쏙옙占쏙옙   
    
   StringBuffer str = new StringBuffer(); 
    
   str.append("<style type='text/css'>"); 
   str.append("  #paging {text-align: center; margin-top: 5px; font-size: 1em;}"); 
   str.append("  #paging A:link {text-decoration:none; color:black; font-size: 1em;}"); 
   str.append("  #paging A:hover{text-decoration:underline; background-color: #ffffff; color:black; font-size: 1em;}"); 
   str.append("  #paging A:visited {text-decoration:none;color:black; font-size: 1em;}"); 
   str.append("</style>"); 
   str.append("<DIV id='paging'>"); 
   str.append("占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙: " + nowPage + " / " + totalPage + "  "); 
 
   int _nowPage = (nowGrp-1) * pagePerBlock; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
   if (nowGrp >= 2){ 
     str.append("[<A href='./list.jsp?col="+col+"&word="+word+"&nowPage="+_nowPage+"'>占쏙옙占쏙옙</A>]"); 
   } 
 
   for(int i=startPage; i<=endPage; i++){ 
     if (i > totalPage){ 
       break; 
     } 
 
     if (nowPage == i){ // 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占싱몌옙 占쏙옙占쏙옙 효占쏙옙 
       str.append("<span style='font-size: 1.2em; font-weight: bold;'>"+i+"</span> ");   
     }else{ 
       str.append("<A href='./list.jsp?col="+col+"&word="+word+"&nowPage="+i+"'>"+i+"</A> "); 
     } 
      
   } 
    
   _nowPage = (nowGrp * pagePerBlock)+1; // 10占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싱듸옙 
   if (nowGrp < totalGrp){ 
     str.append("[<A href='./list.jsp?col="+col+"&word="+word+"&nowPage="+_nowPage+"'>占쏙옙占쏙옙</A>]"); 
   } 
   str.append("</DIV>"); 
    
   return str.toString(); 
 } 
	
	public static String checkNull(String string){
		if(string == null){
			string = "";
		}
		return string;
	}
	
	public static void deleteFile(String upDir, String oldfile) {
		File file = new File(upDir, oldfile);
		if(file.exists()) {
			file.delete();
		}
	}
}

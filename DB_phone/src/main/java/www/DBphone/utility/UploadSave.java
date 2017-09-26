package www.DBphone.utility;
 
import java.io.File;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
 
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;

/**
 * HttpServletRequestWrapper ?겢?옒?뒪?뒗 HttpServletRequest ?씤?꽣?럹?씠?뒪瑜? ?엫?떆濡? 援ы쁽?븳 ?겢?옒?뒪濡? 媛쒕컻?옄媛?
 * ?궡遺?媛앹껜?씤 request瑜? ?궗?슜?븯吏??븡怨? ?깉濡쒖슫 ?삎?깭濡? request 媛앹껜瑜? 留뚮뱾?뼱 ?궗?슜?븷 寃쎌슦 ?긽?냽諛쏅뒗 ?겢?옒?뒪?엯?땲?떎. Apahce
 * FileUpload 肄ㅽ룷?꼳?듃瑜? ?궗?슜?븯湲? ?렪由ы븯寃? 吏??썝?빀?땲?떎. FileUpload API瑜? ?궗?슜?븯?뒗
 * HttpServletRequestWrapper ?겢?옒?뒪濡쒖꽌 HttpServletRequest?뿉 湲곕컲?븳 API瑜? ?궗?슜?븯湲? ?쐞?븳 ?옒?띁?씠?떎.
 */
public class UploadSave extends HttpServletRequestWrapper {
 
  private boolean multipart = false;
 
  private HashMap parameterMap; // ?씪諛? <INPUT> ?뤌?깭洹?
  private HashMap fileItemMap; // ?쟾?넚?맂 <FILE> ?깭洹? 媛앹껜媛? ???옣
 
  /**
   * 湲곕낯 ?깮?꽦?옄
   * 
   * @param request
   * @throws FileUploadException
   */
  public UploadSave(HttpServletRequest request)
      throws FileUploadException {
    this(request, -1, -1, null);
  }
 
  /**
   * ?깮?꽦?옄
   * 
   * @param request
   *          HttpServletRequest 媛앹껜
   * @param threshold
   *          硫붾え由ъ뿉 ???옣?븷 理쒕??겕湲?
   * @param max
   *          ?뾽濡쒕뱶?븷 理쒕? ?뙆?씪?겕湲?
   * @param repositoryPath
   *          ?뾽濡쒕뱶 寃쎈줈
   * @throws FileUploadException
   */
  public UploadSave(HttpServletRequest request, int threshold, int max,
      String repositoryPath) throws FileUploadException {
    super(request);
 
    parsing(request, threshold, max, repositoryPath);
  }
 
  /**
   * ?씪諛? ?엯?젰 ?븘?뱶?? ?뙆?씪 ?븘?뱶瑜? MAP?뿉 ???옣
   * 
   * @param request
   *          HttpServletRequest 媛앹껜
   * @param threshold
   *          硫붾え由ъ뿉 ???옣?븷 理쒕??겕湲?
   * @param max
   *          ?뾽濡쒕뱶?븷 理쒕? ?뙆?씪?겕湲?
   * @param repositoryPath
   *          ?뾽濡쒕뱶 寃쎈줈
   * @throws FileUploadException
   */
  private void parsing(HttpServletRequest request, int threshold, int max,
      String repositoryPath) throws FileUploadException {
 
    if (FileUpload.isMultipartContent(request)) {
      multipart = true;
 
      parameterMap = new java.util.HashMap();
      fileItemMap = new java.util.HashMap();
 
      DiskFileUpload diskFileUpload = new DiskFileUpload();
      if (threshold != -1) {
        diskFileUpload.setSizeThreshold(threshold);
      }
      diskFileUpload.setSizeMax(max);
      if (repositoryPath != null) {
        diskFileUpload.setRepositoryPath(repositoryPath);
      }
 
      java.util.List list = diskFileUpload.parseRequest(request);
      for (int i = 0; i < list.size(); i++) {
        FileItem fileItem = (FileItem) list.get(i);
        String name = fileItem.getFieldName();
 
        if (fileItem.isFormField()) { // ?씪諛? ?뤌 ?깭洹몄씤吏? 寃??궗
          // ?씪諛? ?뤌?깭洹몃씪硫? 泥섎━
          String value = fileItem.getString();
          String[] values = (String[]) parameterMap.get(name);
          if (values == null) {
            values = new String[] { value };
          } else {
            String[] tempValues = new String[values.length + 1];
            System.arraycopy(values, 0, tempValues, 0, values.length);
            tempValues[tempValues.length - 1] = value;
            values = tempValues;
          }
          parameterMap.put(name, values);
        } else { // ?뙆?씪 ?깭洹몃씪硫? 泥섎━
          System.out.println("?뙆?씪 ?깭洹? 諛쒓껄?맖 ?깭洹몃챸: " + name);
          System.out.println("?뙆?씪 ?깭洹? 諛쒓껄?맖 ?뙆?씪紐?: " + fileItem.getName());
          fileItemMap.put(name, fileItem);
        }
      }
      addTo(); // request ?냽?꽦?쑝濡? ?꽕?젙?븳?떎.
    }
  }
 
  /**
   * ?뙆?씪?쓣 ?쟾?넚?븯?뒗 enctype="multipart/form-data"?씤寃쎌슦 true由ы꽩
   * 
   * @return enctype="multipart/form-data"?씤寃쎌슦 true由ы꽩
   */
  public boolean isMultipartContent() {
    return multipart;
  }
 
  /**
   * 二쇱뼱吏? ?뙆?씪誘명꽣?뿉 ???븳 媛믪쓣 由ы꽩
   */
  public String getParameter(String name) {
    if (multipart) {
      String[] values = (String[]) parameterMap.get(name);
      if (values == null)
        return null;
      return values[0];
    } else
      return super.getParameter(name);
  }
 
  /**
   * ?뙆?씪誘명꽣?쓽 媛믩뱾?쓣 由ы꽩
   */
  public String[] getParameterValues(String name) {
    if (multipart)
      return (String[]) parameterMap.get(name);
    else
      return super.getParameterValues(name);
  }
 
  /**
   * ?쟾泥? ?뙆?씪誘명꽣?쓽 ?씠由꾩쓣 由ы꽩
   */
  public Enumeration getParameterNames() {
    if (multipart) {
      return new Enumeration() {
        Iterator iter = parameterMap.keySet().iterator();
 
        public boolean hasMoreElements() {
          return iter.hasNext();
        }
 
        public Object nextElement() {
          return iter.next();
        }
      };
    } else {
      return super.getParameterNames();
    }
  }
 
  public Map getParameterMap() {
    if (multipart)
      return parameterMap;
    else
      return super.getParameterMap();
  }
 
  /**
   * 吏??젙?븳 ?뙆?씪誘명꽣 ?씠由꾧낵 愿??젴?맂 FileItem?쓣 由ы꽩?빀?땲?떎.
   * 
   * @param name
   * @return
   */
  public FileItem getFileItem(String name) {
    if (multipart)
      return (FileItem) fileItemMap.get(name);
    else
      return null;
  }
 
  /**
   * ?엫?떆濡? ?궗?슜?맂 ?뾽濡쒕뱶 ?뙆?씪?쓣 ?궘?젣?빀?땲?떎.
   */
  public void delete() {
    if (multipart) {
      Iterator fileItemIter = fileItemMap.values().iterator();
      while (fileItemIter.hasNext()) {
        FileItem fileItem = (FileItem) fileItemIter.next();
        fileItem.delete();
      }
    }
  }
 
  /**
   * ?옒?띁媛앹껜 ?옄泥대?? request 媛앹껜?뿉 ???옣?빀?땲?떎.
   */
  public void addTo() {
    super.setAttribute(UploadSave.class.getName(), this);
  }
 
  /**
   * request ?냽?꽦?뿉 ???옣?맂 FileUploadRequestWrapper瑜? 由ы꽩?빀?땲?떎.
   * 
   * @param request
   * @return
   */
  public static UploadSave getFrom(HttpServletRequest request) {
    return (UploadSave) request.getAttribute(UploadSave.class
        .getName());
  }
 
  /**
   * 吏??젙?븳 request媛? ?옒?띁瑜? ?냽?꽦?쑝濡? ?룷?븿?븯怨? ?엳?쑝硫? true瑜? 由ы꽩?빀?땲?떎.
   * 
   * @param request
   * @return
   */
  public static boolean hasWrapper(HttpServletRequest request) {
    if (UploadSave.getFrom(request) == null) {
      return false;
    } else {
      return true;
    }
  }
 
  /**
   * ?꽌踰꾩뿉 ?삱?씪?삩 ?뙆?씪?쓣 ?꽌踰꾩쓽 ?뵒?뒪?겕?뿉 ???옣 ?뙆?씪紐? 泥섎━: data.txt -> (0)data.txt ->(1)data.txt ->
   * (2)data.txt..
   * 
   * @param fileItem
   *          ???옣?븷 ?뙆?씪 媛앹껜
   * @param upDir
   *          ???옣?븷 ?꽌踰꾩쓽 ?뤃?뜑
   * @return ???옣?맂 ?뙆?씪紐?
   */
  public static String saveFile(FileItem fileItem, String upDir) {
 
    String filename = ""; // ?뾽濡쒕뱶 ?뙆?씪紐?
 
    // ?뙆?씪 ?깭洹?
    System.out.println("?쟾?넚?맂 ?뙆?씪紐?: " + fileItem.getName());
 
    // ?뤃?뜑 援щ텇?옄 異붿텧
    int idx = fileItem.getName().lastIndexOf("\\"); // ?쐢?룄?슦 湲곕컲
 
    if (idx == -1) { // ?쑀?땳?뒪, 由щ늼?뒪 湲곕컲
      idx = fileItem.getName().lastIndexOf("/");
    }
 
    // ?닚?닔 ?뙆?씪紐? 異붿텧
    filename = fileItem.getName().substring(idx + 1);
 
    try {
      // -----------------------------------------------
      // ???긽 ?뤃?뜑?뿉 ???옣?븷 ?뙆?씪 媛앹껜 ?깮?꽦, ?뤃?뜑 + ?뙆?씪紐?
      // -----------------------------------------------
      File uploadedFile = new File(upDir, filename);
 
      // ?삱由대젮?뒗 ?뙆?씪怨? 媛숈? ?씠由꾩씠 議댁옱?븯硫? 以묐났?뙆?씪 泥섎━
      if (uploadedFile.exists() == true) {
        for (int k = 0; true; k++) {
          // ?뙆?씪紐? 以묐났?쓣 ?뵾?븯湲? ?쐞?븳 ?씪?젴 踰덊샇瑜? ?깮?꽦?븯?뿬
          // ?뙆?씪紐낆쑝濡? 議고빀
          uploadedFile = new File(upDir, "(" + k + ")" + filename);
          // 議고빀?맂 ?뙆?씪紐낆씠 議댁옱?븯吏? ?븡?뒗?떎硫?, ?씪?젴踰덊샇媛?
          // 遺숈? ?뙆?씪紐? ?떎?떆 ?깮?꽦
          // 議댁옱?븯吏? ?븡?뒗 寃쎌슦
          // !?쓣 ?씠?슜?빐 false?씪 寃쎌슦 李몄쑝濡? 泥섎━?릺?룄濡? 蹂??솚
          if (!(uploadedFile.exists() == true)) {
            filename = "(" + k + ")" + filename;
            break;
          }
        }
      }
 
      // storage ?뤃?뜑?뿉 ?뙆?씪紐? ???옣
      fileItem.write(uploadedFile);
    } catch (Exception e) {
      System.out.println(e.toString());
    }
 
    return filename; // ?뾽濡쒕뱶?맂 ?뙆?씪紐? 由ы꽩
  }
 
  // ---------------------------------------------------------------
  // Fileupload 肄ㅽ룷?꼳?듃 愿??젴 肄붾뱶 ?걹
  // ---------------------------------------------------------------
 
  /**
   * ?뙆?씪?쓣 ?궘?젣?빀?땲?떎.
   */
  public static boolean deleteFile(String folder, String fileName) {
    boolean ret = false;
 
    try {
      if (fileName != null) { // 湲곗〈?뿉 ?뙆?씪?씠 議댁옱?븯?뒗 寃쎌슦 ?궘?젣
        File file = new File(folder + "/" + fileName);
        ret = file.delete();
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
 
    return ret;
  }
 
  public HashMap getFileItemMap() {
    return fileItemMap;
  }
 
  public void setFileItemMap(HashMap fileItemMap) {
    this.fileItemMap = fileItemMap;
  }
 
  /**
   * ?쟾?넚諛쏆? ?뙆?씪?쓽 媛??닔瑜? 由ы꽩
   * 
   * @return
   */
  public int getFileCount() {
    return this.fileItemMap.size();
  }
 
  /**
   * FileUpload 1.2, 1.3 ?븳湲? 蹂??솚
   * 
   * @param str
   * @return
   */
  public static synchronized String encode(String str) {
    String corean = null;
    try {
      corean = new String(str.getBytes("ISO-8859-1"), "UTF-8");
      // corean= new String(str.getBytes("ISO-8859-1"), "KSC5601");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }
 
}
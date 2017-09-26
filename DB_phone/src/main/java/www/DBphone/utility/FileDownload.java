package www.DBphone.utility;
 
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
 
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class FileDownload extends javax.servlet.http.HttpServlet {
  // ?꽌釉붾┸ 踰꾩쟾, ?깮?왂 媛??뒫
  static final long serialVersionUID = 1L;
 
  // web.xml?뿉 ?젒洹? 媛??뒫
  private ServletConfig config = null;
 
  // 湲곕낯 ?깮?꽦?옄
  public FileDownload() {
    super();
  }
 
  /**
   * ?넱罹? ?떎?뻾?떆 理쒖큹 1踰덈쭔 ?떎?뻾 ?맗?땲?떎. init()?? ?깮?왂媛??뒫
   * 
   * @param config
   *          web.xml?뿉 ?젒洹쇨??뒫, ?꽌釉붾┸ ?솚寃? ?젙蹂? ???옣 媛앹껜
   */
  @Override
  public void init(ServletConfig config) throws ServletException {
    this.config = config;
  }
 
  // Form - get 諛⑹떇 泥섎━
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    doProcess(request, response);
  }
 
  // Form - post 諛⑹떇 泥섎━
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    doProcess(request, response);
  }
 
  protected void doProcess(HttpServletRequest request,
      HttpServletResponse response) throws ServletException, IOException {
    ServletContext ctx = config.getServletContext();
 
    // ???옣 ?뤃?뜑瑜? ?젅?? 寃쎈줈濡? 蹂??솚
    String dir = ctx.getRealPath(request.getParameter("dir"));
 
    // ?뙆?씪紐? 諛쏄린
    String filename = request.getParameter("filename");
 
    // ?쟾泥? ?젅?? 寃쎈줈 議고빀
    File file = new File(dir + "/" + filename);
    String fileStr = dir + "/" + filename;
    String contentType = getType(fileStr);
    System.out.println("?떎?슫濡쒕뱶 ???엯: " + contentType);
 
    String disposition = getDisposition(filename, getBrowser(request));
    response.addHeader("Content-disposition", disposition);
    response.setHeader("Content-Transfer-Encoding", "binary");
    response.setContentLength((int) file.length());
    response.setContentType(contentType);
    response.setHeader("Connection", "close");
 
    // ?뙆?씪?쓣 ?씫?뼱?삱 ?겕湲? 吏??젙
    byte buffer[] = new byte[4096];
 
    try {
      if (file.isFile()) {
        // ?뙆?씪?쓣 ?씫?뼱 ?삤?뒗 ?뿭?솢
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(
            file));
 
        // ?궗?씠?듃?뿉 ?젒?냽?맂 ?젒?냽?옄?뿉寃? 異쒕젰
        BufferedOutputStream bos = new BufferedOutputStream(
            response.getOutputStream());
 
        int read = 0;
        // bis.read(buffer): ?뙆?씪?뿉?꽌 4KB?뵫 ?씫?뼱?꽌
        // buffer?뿉 ???옣
        // ?뙆?씪?쓽 ?걹?씠硫? -1
        while ((read = bis.read(buffer)) != -1) {
          // ?젒?냽?옄濡? 異쒕젰
          bos.write(buffer, 0, read);
        }// while
        bis.close();
        bos.close();
      }
 
    } catch (Exception e) {
 
    }
  }
 
  public String getType(String fileUrl) {
    String type = "";
    fileUrl = "file:" + fileUrl;
    try {
      URL u = new URL(fileUrl);
      URLConnection uc = u.openConnection();
      type = uc.getContentType();
 
    } catch (Exception e) {
      System.out.println(e.toString());
    }
 
    return type;
  }
 
  public String getBrowser(HttpServletRequest request) {
    String header = request.getHeader("User-Agent");
    if (header.indexOf("MSIE") > -1) {
      return "MSIE";
    } else if (header.indexOf("Chrome") > -1) {
      return "Chrome";
    } else if (header.indexOf("Opera") > -1) {
      return "Opera";
    }
    return "Firefox";
  }
 
  public static synchronized String getDisposition(String filename, String browser) {
    String dispositionPrefix = "attachment;filename=";
    String encodedFilename = null;
    try {
      if (browser.equals("MSIE")) {
        encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll(
            "\\+", "%20");
      } else if (browser.equals("Firefox")) {
        encodedFilename =
 
        "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
      } else if (browser.equals("Opera")) {
        encodedFilename =
 
        "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
      } else if (browser.equals("Chrome")) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < filename.length(); i++) {
          char c = filename.charAt(i);
          if (c > '~') {
            sb.append(URLEncoder.encode("" + c, "UTF-8"));
          } else {
            sb.append(c);
          }
        }
        encodedFilename = sb.toString();
      } else {
        System.out.println("Not supported browser");
      }
    } catch (Exception e) {
 
    }
 
    return dispositionPrefix + encodedFilename;
  }
 
}
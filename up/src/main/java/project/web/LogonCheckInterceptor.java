package project.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


import project.domain.User;
/*
 * FileName : PojoAspectJ.java
  */
public class LogonCheckInterceptor extends HandlerInterceptorAdapter {

  ///Field
  
  ///Constructor
  public LogonCheckInterceptor(){
    System.out.println("\nCommon :: "+this.getClass()+"\n");    
  }
  
  ///Method
  public boolean preHandle( HttpServletRequest request,
                            HttpServletResponse response, 
                            Object handler) throws Exception {
    
    System.out.println("\n[ LogonCheckInterceptor start........]");
    
    HttpSession session = request.getSession(true);
    User user = (User)session.getAttribute("user");

    if(   user != null   )  {
      String uri = request.getRequestURI();
      
      /*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      if(   uri.indexOf("addUserView") != -1  ||  uri.indexOf("addUser") != -1 || 
          uri.indexOf("loginView") != -1      ||  uri.indexOf("login") != -1    || 
          uri.indexOf("checkDuplication") != -1 ){
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
      System.out.println("uti"+uri);
      if(   uri.indexOf("addUser") != -1 || uri.indexOf("login") != -1    || 
          uri.indexOf("checkDuplication") != -1  || uri.indexOf("login12") != -1 ){
        request.getRequestDispatcher("/index.jsp").forward(request, response);
        System.out.println("[ .... 1]");
        System.out.println(uri.indexOf("addUserLikeArt"));
        System.out.println("[ LogonCheckInterceptor end........]\n");
        return false;
      }
      
      System.out.println("[ ... 2]");
      System.out.println("[ LogonCheckInterceptor end........]\n");
      return true;
      
      
    }else{ 
      String uri = request.getRequestURI();
      
      /*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      if(   uri.indexOf("addUserView") != -1  ||  uri.indexOf("addUser") != -1 || 
          uri.indexOf("loginView") != -1      ||  uri.in
          dexOf("login") != -1    || 
          uri.indexOf("checkDuplication") != -1 ){
      /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
      if(   uri.indexOf("addUser") != -1 || uri.indexOf("login") != -1    || 
          uri.indexOf("checkDuplication") != -1 || uri.indexOf("upload") != -1 || uri.indexOf("video") != -1  || uri.indexOf("login12") != -1 || uri.indexOf("listArtist")!=-1 || uri.indexOf("findPwd")!=-1 || uri.indexOf("getArtist")!=-1  ){
        System.out.println("[...3 ]");
        System.out.println("[ LogonCheckInterceptor end........]\n");
        return true;
      }
      
      request.getRequestDispatcher("/index.jsp").forward(request, response);
      System.out.println("[ ...4 ]");
      System.out.println("[ LogonCheckInterceptor end........]\n");
      return false;
    }
  }
}//end of class
import Global.DB;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



@WebServlet(urlPatterns = {"/editpic2"})
public class editpic2 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setSizeThreshold(4096);  //in bytes 4 kb
            
            ServletFileUpload upload = new ServletFileUpload(factory);
            
            upload.setSizeMax(10000000);  //10mb
            
            List fileItems = upload.parseRequest(request);
            Iterator i= fileItems.iterator();
            
            FileItem fi=(FileItem) i.next();
            
            String fileName= fi.getName();
            
            String p = getServletContext().getRealPath("//images");
            
            String path=p + File.separator + fileName;
            //out.println(fileName);
            
            File f=new File(path);
            fi.write(f);
            
            
            String n="images/"+fileName;
            
            HttpSession ss=request.getSession();
            
            ss.setAttribute("img",n);
            
            String uid=(String)ss.getAttribute("uid");
            String qry="update tbuser set userimg='"+n+"' where usrid='"+uid+"'";
            
            new DB().update(qry);
            
            response.sendRedirect("home.jsp");
            
           
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

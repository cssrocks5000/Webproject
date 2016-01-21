/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.NewsBean;
import model.NewsList;

/**
 *
 * @author dominikwieners
 */
@WebServlet(urlPatterns = {"/NewsService"})
public class Servlet extends HttpServlet {

   
    
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
        doPost(request, response);
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
        
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
         NewsBean bean = null;
      
      
          if(request.getParameter("do").equals("read")){
              
              bean = NewsList.liste.get(Integer.parseInt(request.getParameter("id")));
              
              RequestDispatcher dispatcher;
              request.setAttribute("bean", bean);
       
              dispatcher = request.getRequestDispatcher("/WEB-INF/page.jsp"); 
              dispatcher.forward(request, response);
              
          }else{
              
            bean = new NewsBean();
            
             bean.setVorname(request.getParameter("vorname"));
             bean.setNachname(request.getParameter("nachname"));
            bean.setEmail(request.getParameter("email"));
            bean.setDatum(request.getParameter("datum"));
          bean.setKategorie(request.getParameter("kategorie"));
          bean.setUeberschrift(request.getParameter("ueberschrift"));
          bean.setNachricht(request.getParameter("nachricht"));
          
           NewsList.liste.add(bean);
             
           RequestDispatcher dispatcher;
           request.setAttribute("bean", bean);
          
           dispatcher = request.getRequestDispatcher("/WEB-INF/detail.jsp"); 
           dispatcher.forward(request, response);
          }
    }

   
}

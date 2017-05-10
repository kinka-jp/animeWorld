package com.serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.sitesDAO;
import com.dto.siteDTO;

/**
 * Servlet implementation class MyServelt
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/MyServelt" })
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.println("<h3>hello world do get.<h3>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//get ServletContext object
		
		ServletContext sc = getServletContext();
		sitesDAO sd = new sitesDAO();
		try {
			ArrayList<siteDTO> sdList = sd.getSites();
			request.setAttribute("id", sdList.get(0).getId());
			request.setAttribute("name", sdList.get(0).getName());
			request.setAttribute("url", sdList.get(0).getLink());
			request.setAttribute("alexa", sdList.get(0).getAlexa());
			request.setAttribute("country", sdList.get(0).getCountry());

		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try{
			//read jsp
			RequestDispatcher gdi = sc.getRequestDispatcher("/WEB-INF/top.jsp");
			gdi.forward(request, response);
			
		}catch (Exception e){
			e.printStackTrace();
		}
		
	}

}

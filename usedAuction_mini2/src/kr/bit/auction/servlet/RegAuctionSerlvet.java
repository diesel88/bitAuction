package kr.bit.auction.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author 김용재
 * @since 2017-05-22
 */
@WebServlet("/auction/RegAuctionSerlvet")
public class RegAuctionSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegAuctionSerlvet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}

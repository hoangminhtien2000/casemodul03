package controller;

import model.Account;
import service.AccountService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/findAccount")
public class FindAccountServlet extends HttpServlet {
    AccountService accountService=new AccountService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("find");
        List<Account> accountListFind= accountService.accountListFind(name);
        req.setAttribute("accounts", accountListFind);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/view/accountlist.jsp");
        dispatcher.forward(req, resp);
    }
}

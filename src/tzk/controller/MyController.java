package tzk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
import tzk.dao.impl.CustomerDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyController implements Controller {
//    int i=1;

    @Autowired
    private CustomerDAOImpl customerDAO;


    @Override
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
//        设置页面回显数据
        modelAndView.addObject("hello","欢迎学习springmvc");
/*//        返回物理视图
        modelAndView.setViewName("/WEB-INF/jsps/index.jsp");*/
//        返回逻辑视图
        modelAndView.setViewName("index");
       /*  ModelAndView mv =new ModelAndView("myController");
         mv.setViewName("myController");

        mv.addObject("hello","使用BeanNameViewResolver");*/
//    if(i==1){
//        modelAndView.setViewName("index");
//        modelAndView.addObject("all",customerDAO.getAll());
//    }
        return modelAndView ;
    }
}

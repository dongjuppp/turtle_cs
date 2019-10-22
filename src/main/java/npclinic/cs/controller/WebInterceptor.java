package npclinic.cs.controller;

import npclinic.cs.dto.menu.HeaderMenuDTO;
import npclinic.cs.service.menu.DropMenuService;
import npclinic.cs.service.menu.HeaderMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
* 이부분은 사용자의 모든 요청을 가로채서 공통된 작업 같은 것을 하는 부분이다.
* 가급적 손대지 말것
* */


@Component
public class WebInterceptor implements HandlerInterceptor {

    @Autowired
    HeaderMenuService headerMenuService;

    @Autowired
    DropMenuService dropMenuService;

    //컨트롤러에 도달하기 전에 처리해야 할 일을 처리하는 부분
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object obj)
            throws Exception{

        HttpSession httpSession = req.getSession(true);
        req.setCharacterEncoding("UTF-8");
        res.setCharacterEncoding("UTF-8");

        if(httpSession.getAttribute("headerMenu")==null ||
                httpSession.getAttribute("dropMenu")==null){

            httpSession.setAttribute("headerMenu"
                    ,headerMenuService.getAllMenu());

        }

        return true;
    }

    //컨트롤러 이후 처리해야 할 일을 처리하는 부분
    public void postHandle(HttpServletRequest req, HttpServletResponse res, Object obj, ModelAndView mv) {

    }

    //랜더링 이후 처리해야 할 일을 처리하는 부분
    //랜더링이란 클라이언트의 요청이 처리되어 클라이언트에게 return 해준이후를 의미
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

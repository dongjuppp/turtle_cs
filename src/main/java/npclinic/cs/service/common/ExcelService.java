package npclinic.cs.service.common;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;


public interface ExcelService {

    String writeExcel(String[] rowFormat, ArrayList<ArrayList<String>> list,
                      String path, String filelName);

    String deliveExcel(String fileName, String path, HttpServletRequest request, HttpServletResponse response);
}

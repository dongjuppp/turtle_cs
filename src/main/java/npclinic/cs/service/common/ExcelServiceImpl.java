package npclinic.cs.service.common;

import npclinic.cs.dto.reserve.ReserveDataDTO;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

@Service
public class ExcelServiceImpl implements ExcelService {

    @Override
    public String writeExcel(String[] rowFormat, ArrayList<ArrayList<String>> list, String path,String fileName) {

        HSSFWorkbook workbook=new HSSFWorkbook();

        HSSFSheet sheet=workbook.createSheet("예약");

        HSSFRow row=null;

        HSSFCell cell=null;

        row=sheet.createRow(0);
        String rowOne[]= rowFormat;
        for(int k=0;k<rowOne.length;k++) {
            cell=row.createCell(k);
            cell.setCellValue(rowOne[k]);
        }

        for(int i=0;i<list.size();i++){
            ArrayList<String> data = list.get(i);
            row = sheet.createRow((short)i+1);
            for(int j=0;j<data.size();j++){
                cell = row.createCell(j);
                cell.setCellValue(data.get(j));
            }
        }

        try {
            FileOutputStream fileoutputstream=new FileOutputStream(path+"/"+fileName+".xls");
            workbook.write(fileoutputstream);
            fileoutputstream.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return fileName+".xls";
    }

    @Override
    public String deliveExcel(String fileName, String path, HttpServletRequest request, HttpServletResponse response) {

        String savePath = path;
        String filename = fileName;
        String orgfilename = fileName;
        InputStream in = null;
        OutputStream os = null;
        File file = null;
        boolean skip = false;
        String client = "";

        try{
            try{
                file = new File(savePath, filename);
                in = new FileInputStream(file);
            }catch(FileNotFoundException fe){
                skip = true;
            }

            client = request.getHeader("User-Agent");
            response.reset() ;
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Description","JSP Generated Data");


            if(!skip){
                if(client.indexOf("MSIE") != -1){
                    response.setHeader ("Content-Disposition", "attachment;filename="+new String(orgfilename.getBytes("KSC5601"),"ISO8859_1"));
                }else{
                    orgfilename = new String(orgfilename.getBytes("utf-8"),"iso-8859-1");

                    response.setHeader("Content-Disposition", ("attachment; filename=\"" + orgfilename + "\""));
                    response.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
                }

                response.setHeader ("Content-Length", ""+file.length());

                os = response.getOutputStream();
                byte b[] = new byte[(int)file.length()];
                int leng = 0;

                while( (leng = in.read(b)) > 0 ){
                    os.write(b,0,leng);
                }
            }
            in.close();
            os.close();
        }catch(Exception e){
            e.printStackTrace();
        }

        try {
            File deleteFile = new File(savePath, filename);
            deleteFile.delete();
        }catch(Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}

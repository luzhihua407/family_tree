package com.starfire.familytree.excel.controller;


import com.starfire.familytree.excel.service.IExcelService;
import com.starfire.familytree.response.Response;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.WorkbookUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

/**
 * Excel 操作
 */
@Slf4j
@RestController
@RequestMapping("/excel")
public class ExcelController {

    @Autowired
    private IExcelService excelService;

    @PostMapping(value="/importPeople")
    public Response<String> importPeople(@RequestParam("file") MultipartFile multipartFile) {
        try {
            excelService.importPeople(multipartFile.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
        Response<String> response = new Response<>();
        return response.success("");
    }


}

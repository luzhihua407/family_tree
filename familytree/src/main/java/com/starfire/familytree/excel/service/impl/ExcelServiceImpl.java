package com.starfire.familytree.excel.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.starfire.familytree.enums.GenderEnum;
import com.starfire.familytree.excel.service.ExcelHeaderEnum;
import com.starfire.familytree.excel.service.IExcelService;
import com.starfire.familytree.folk.entity.People;
import com.starfire.familytree.folk.mapper.PeopleMapper;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.ss.usermodel.*;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

/**
 * @author luzh
 * @version 1.0.0
 * @ClassName ExcelServiceImpl.java
 * @Description TODO
 * @createTime 2019年12月12日 14:39:00
 */
@Service
public class ExcelServiceImpl extends ServiceImpl<PeopleMapper, People> implements IExcelService {

    @Override
    public void importPeople(InputStream inp) {
        List<Map<String, Object>> list = parseExcel(inp);
        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> map =  list.get(i);
            Object name = map.get(ExcelHeaderEnum.姓名.name());
            Object gender = map.get(ExcelHeaderEnum.性别.name());
            Object generations =map.get(ExcelHeaderEnum.第几世.name());
            if(name!=null && gender!=null && generations!=null){
                People people = new People();
                people.setFullName((String) name);
                if("男".equals(gender)){
                    people.setGender(GenderEnum.男);
                }
                if("女".equals(gender)){
                    people.setGender(GenderEnum.女);
                }
                people.setGenerations(((Double)generations).intValue());
                this.save(people);
            }else{
                throw new RuntimeException("第"+(i+1)+"行，【姓名】，【性别】、【第几世】不能为空");
            }

        }

    }

    public List<Map<String, Object>> parseExcel(InputStream inp) {
        Workbook wb = null;
        try {
            wb = WorkbookFactory.create(inp);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Sheet sheet = wb.getSheetAt(0);
        List<Map<String, Object>> list = readSheet(sheet);
        return  list;

    }

    /**
     * 提取Excel的表头
     * @param row
     * @return
     */
    public List<String> extractHeader(Row row){
        List<String> header=new ArrayList<>();
        for (Cell cell : row) {
            String value=null;
            CellType cellType = cell.getCellType();
            if(cellType==CellType.STRING){
                value= cell.getStringCellValue();
            }
            header.add(value);
        }
        return  header;
    }

    /**
     * 提取Excel的值
     * @param row
     * @return
     */
    public Map<String,Object> extractPerRowValue(Row row,List<String> header){
        Map<String,Object> map=new HashMap<>();
        for (Cell cell : row) {
            int columnIndex = cell.getColumnIndex();
            String name = header.get(columnIndex);
            Object value=null;
            CellType cellType = cell.getCellType();
            if(cellType==CellType.STRING){
                value= cell.getStringCellValue();
            }
            if(cellType==CellType.NUMERIC){
                value= cell.getNumericCellValue();
            }
            if(cellType==CellType.BOOLEAN){
                value= cell.getBooleanCellValue();
            }
            if(cellType==CellType.FORMULA){
                value= cell.getDateCellValue();
            }
            map.put(name,value);
        }
        return  map;
    }

    public List<Map<String,Object>> readSheet(Sheet sheet){
        List<Map<String,Object>> valueList=new ArrayList<>();
        List<String> header=new ArrayList<>();
        for (Row row : sheet) {
            int rowNum = row.getRowNum();

            if(rowNum==0){
                header = extractHeader(row);
            }else{
                Map<String, Object> map = extractPerRowValue(row, header);
                valueList.add(map);
            }
        }
        return  valueList;
    }
}

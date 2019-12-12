package com.starfire.familytree.excel.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.starfire.familytree.folk.entity.Category;
import com.starfire.familytree.folk.entity.People;

import java.io.InputStream;

/**
 * @author luzh
 * @version 1.0.0
 * @ClassName IExcelService.java
 * @Description TODO
 * @createTime 2019年12月12日 14:41:00
 */
public interface IExcelService  extends IService<People> {

    public void importPeople(InputStream inp);
}

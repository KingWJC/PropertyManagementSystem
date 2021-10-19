package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblEmployeeContactCategory;
import com.example.psp_back.mapper.TblEmployeeContactCategoryMapper;
import com.example.psp_back.service.base.TblEmployeeContactCategoryService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 员工通讯录类别 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblEmployeeContactCategoryServiceImpl
        extends ServiceImpl<TblEmployeeContactCategoryMapper, TblEmployeeContactCategory>
        implements TblEmployeeContactCategoryService {

}

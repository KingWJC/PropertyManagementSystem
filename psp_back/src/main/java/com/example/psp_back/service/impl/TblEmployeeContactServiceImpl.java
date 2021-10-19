package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblEmployeeContact;
import com.example.psp_back.mapper.TblEmployeeContactMapper;
import com.example.psp_back.service.base.TblEmployeeContactService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 员工通讯录 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblEmployeeContactServiceImpl extends ServiceImpl<TblEmployeeContactMapper, TblEmployeeContact>
        implements TblEmployeeContactService {

}

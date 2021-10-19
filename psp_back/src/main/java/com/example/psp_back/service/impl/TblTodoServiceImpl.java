package com.example.psp_back.service.impl;

import com.example.psp_back.bean.TblTodo;
import com.example.psp_back.mapper.TblTodoMapper;
import com.example.psp_back.service.base.TblTodoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 待办事项 服务实现类
 * </p>
 *
 * @author lian
 * @since 2020-04-18
 */
@Service
public class TblTodoServiceImpl extends ServiceImpl<TblTodoMapper, TblTodo> implements TblTodoService {

}

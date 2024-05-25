package com.education.service.impl;

import com.education.domain.Teachers;
import com.education.dao.TeachersMapper;
import com.education.service.ITeachersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cxd
 * @since 2024-05-25
 */
@Service
public class TeachersServiceImpl extends ServiceImpl<TeachersMapper, Teachers> implements ITeachersService {

}

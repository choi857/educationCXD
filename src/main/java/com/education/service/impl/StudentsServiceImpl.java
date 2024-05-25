package com.education.service.impl;

import com.education.domain.Students;
import com.education.dao.StudentsMapper;
import com.education.service.IStudentsService;
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
public class StudentsServiceImpl extends ServiceImpl<StudentsMapper, Students> implements IStudentsService {

}

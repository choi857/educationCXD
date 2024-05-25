package com.education.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.education.domain.Users;
import com.education.dao.UsersMapper;
import com.education.service.IUsersService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;

import java.time.LocalDateTime;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author cxd
 * @since 2024-05-22
 */
@Service
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users> implements IUsersService {

    @Autowired
    private UsersMapper usersMapper;

    @Override
    public boolean registerUser(Users user) {

        // 组装查询条件
        QueryWrapper<Users> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", user.getUsername());
        // 执行查询
        Users users = usersMapper.selectOne(queryWrapper);

        if (users != null) {
            // 如果用户名已存在，抛出409冲突异常
            throw new HttpClientErrorException(HttpStatus.CONFLICT, "用户名已存在");
        }
        else{

            user.setCreated_at(LocalDateTime.now()); // 设置创建时间
            user.setDeleted(false); // 设置删除标记为false
            int result = usersMapper.insert(user);
            return result > 0;
        }
    }

    @Override
    public Users loginUser(Users user) {

        QueryWrapper<Users> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", user.getUsername());
        queryWrapper.eq("password", user.getPassword());
        Users users = usersMapper.selectOne(queryWrapper);
        return users;
    }
}

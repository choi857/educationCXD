package com.education.service;

import com.education.domain.Users;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author cxd
 * @since 2024-05-25
 */
public interface IUsersService extends IService<Users> {
    boolean registerUser(Users user);

    Users loginUser(Users user);
}

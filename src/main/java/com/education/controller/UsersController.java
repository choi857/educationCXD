package com.education.controller;


import com.education.domain.Users;
import com.education.service.impl.UsersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.HttpClientErrorException;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author cxd
 * @since 2024-05-22
 */
//@RestController
//@RequestMapping("/users")
//public class UsersController {
//
//    @Autowired
//    private UsersServiceImpl usersService;
//
//    @PostMapping("/register")
////    @CrossOrigin
//    public ResponseEntity<?> register(@RequestBody Users user) {
//
//        // 继续注册流程
//        if (usersService.registerUser(user)) {
//            return ResponseEntity.ok("用户注册成功");
//        } else {
//            return ResponseEntity.badRequest().body("用户注册失败");
//        }
//
//
//    }
//}
//


@RestController
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private UsersServiceImpl usersService;

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody Users user) {
        try {
            if (usersService.registerUser(user)) {
                return ResponseEntity.ok("用户注册成功");
            } else {
                return ResponseEntity.badRequest().body("用户注册失败");
            }
        } catch (HttpClientErrorException e) {
            return ResponseEntity
                    .status(e.getStatusCode())
                    .body(e.getMessage());
        }
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody Users user) {

        try {
//            Users loggedInUser = usersService.loginUser(user);
            Users loggedInUser = usersService.loginUser(user);
            if (loggedInUser != null) {
                return ResponseEntity.ok(loggedInUser);
            } else {
                return ResponseEntity.badRequest().body("用户名或密码错误");
            }
        } catch (HttpClientErrorException e) {
            return ResponseEntity
                    .status(e.getStatusCode())
                    .body(e.getMessage());
        }
    }
}
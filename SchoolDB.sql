CREATE DATABASE ssm_db;
USE ssm_db;
-- 创建用户表
CREATE TABLE IF NOT EXISTS users (
           id INT AUTO_INCREMENT PRIMARY KEY,
           username VARCHAR(255) UNIQUE NOT NULL,
           password VARCHAR(255) NOT NULL,
           role ENUM('student', 'teacher', 'admin') NOT NULL,
           created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
           deleted TINYINT(1) DEFAULT 0
) ENGINE=InnoDB;
#
# -- 创建学生表
# CREATE TABLE IF NOT EXISTS students (
#          student_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '学生ID',
#          student_name VARCHAR(255) COMMENT '学生姓名',
#          gender VARCHAR(10) COMMENT '学生性别',
#          age INT COMMENT '学生年龄',
#          email VARCHAR(255) COMMENT '学生邮箱',
#          contact_number VARCHAR(255) COMMENT '学生联系电话',
#          parent_name VARCHAR(255) COMMENT '学生家长姓名',
#          teacher_name VARCHAR(255) COMMENT '授课老师',
#          enrolled_course VARCHAR(255) COMMENT '报名课程',
#          enrollment_status ENUM('待审核', '报名成功', '报名失败') COMMENT '报名状态',
#          deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除'
# ) ENGINE=InnoDB;
#
# INSERT INTO students (student_name, gender, age, email, contact_number, parent_name, teacher_name, enrolled_course, enrollment_status) VALUES
#     ('小丽', '女', 12, 'xiaoli@example.com', '1928-37465-626', '小丽妈妈', '周老师', 'java入土', '待审核'),
#     ('小强', '男', 8, 'xiaoqiang@example.com', '19283746527', '小强爸爸', '吴老师', 'java入土', '待审核'),
#     ('小芳', '女', 9, 'xiao.fang@example.com', '19283746528', '小芳妈妈', '郑老师', 'java大成', '待审核'),
#     ('李华', '男', 15, 'lihua@example.com', '12345678901', '李华爸爸', '张老师', 'java入土', '待审核'),
#     ('小明', '男', 20, 'xiaoming@example.com', '19283746524', '小明爸爸', '刘老师', 'java大成', '待审核'),
#     ('小红', '女', 5, 'xiaohong@example.com', '19283746523', '小红妈妈', '王老师', 'java大成', '待审核'),
#
#     ('张三', '男', 15, 'zhangsan@example.com', '12345678901', '张三爸爸', '李老师', 'java入土', '待审核'),
#     ('李四', '女', 14, 'lisi@example.com', '12345678902', '李四妈妈', '王老师', 'java大成', '报名成功'),
#     ('王五', '男', 16, 'wangwu@example.com', '12345678903', '王五爸爸', '赵老师', 'java入土', '报名失败');
#
#
# -- 创建教师表
# CREATE TABLE IF NOT EXISTS teachers (
#                                         teacher_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '教师ID',
#                                         teacher_name VARCHAR(255) COMMENT '教师姓名',
#                                         age INT COMMENT '教师年龄',
#                                         email VARCHAR(255) COMMENT '教师邮箱',
#                                         introduction TEXT COMMENT '教师介绍',
#                                         deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除'
# ) ENGINE=InnoDB;
# INSERT INTO teachers (teacher_name, age, email, introduction, deleted)
# VALUES
#     ('张三', 35, 'zhangsan@example.com', '资深数学教师，拥有10年教学经验。', 0),
#     ('李四', 42, 'lisi@example.com', '专业20年Java工程师。', 0),
#     ('王五', 29, 'wangwu@example.com', '年轻的秃头老师，深受学生喜爱。', 0),
#     ('赵六', 45, 'zhaoliu@example.com', '精通20门编程语言的老教授。', 0);
#
#
#
# -- 创建课程表
# CREATE TABLE IF NOT EXISTS courses (
#                                        course_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '课程ID',
#                                        teacher_id INT COMMENT '授课老师ID',
#                                        course_name VARCHAR(255) COMMENT '课程名称',
#                                        course_description TEXT COMMENT '课程描述',
#                                        class_time DATETIME COMMENT '上课时间',
#                                        class_location VARCHAR(255) COMMENT '上课地点',
#                                        deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除',
#                                        FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE
# ) ENGINE=InnoDB;
# INSERT INTO courses (teacher_id,course_name, course_description, class_time, class_location, deleted)
# VALUES
#     (1,'java入土', '学习重庆四川广东的烤串技术', '2024-06-01 10:00:00', '校门口烧烤摊A101', 0),
#     (2,'java大成', '进入阿里腾讯大厂一展宏图。', '2024-06-02 08:00:00', '教学楼B202', 0),
#     (3,'java精通', 'Hello java精通System.out各种语句。', '2024-06-03 14:00:00', 'C22宿舍5楼靠左床位', 0),
#     (4,'java入门', '一个人怒写java后端和前端逻辑。', '2024-06-04 09:00:00', '图书馆三楼', 0);
#
#
#
#
# -- 创建管理员表
# CREATE TABLE IF NOT EXISTS admins (
#                                       user_id INT PRIMARY KEY,
#                                       specific_field1 VARCHAR(255) COMMENT '管理员特有字段1',
#                                       specific_field2 VARCHAR(255) COMMENT '管理员特有字段2',
#                                       deleted TINYINT(1) DEFAULT 0,
#                                       FOREIGN KEY (user_id) REFERENCES users(id)
# ) ENGINE=InnoDB;

# 创建教师表
CREATE TABLE IF NOT EXISTS teachers (
       teacher_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '教师ID',
       teacher_name VARCHAR(255) COMMENT '教师姓名',
       age INT COMMENT '教师年龄',
       email VARCHAR(255) COMMENT '教师邮箱',
       introduction TEXT COMMENT '教师介绍',
       deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除'
) ENGINE=InnoDB;

INSERT INTO teachers (teacher_name, age, email, introduction)
VALUES
    ('张三', 35, 'zhangsan@example.com', '资深数学教师，拥有10年教学经验。'),
    ('李四', 42, 'lisi@example.com', '专业20年Java工程师。'),
    ('王五', 29, 'wangwu@example.com', '年轻的秃头老师，深受学生喜爱。'),
    ('赵六', 45, 'zhaoliu@example.com', '精通20门编程语言的老教授。');

# 课程表
CREATE TABLE IF NOT EXISTS courses (
        course_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '课程ID',
        teacher_id INT COMMENT '授课老师ID',
        course_name VARCHAR(255) UNIQUE COMMENT '课程名称',
        course_description TEXT COMMENT '课程描述',
        class_time DATETIME COMMENT '上课时间',
        class_location VARCHAR(255) COMMENT '上课地点',
        deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除',
        FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB;

INSERT INTO courses (teacher_id, course_name, course_description, class_time, class_location)
VALUES
    (1, 'java入土', '学习重庆四川广东的烤串技术', '2024-06-01 10:00:00', '校门口烧烤摊A101'),
    (2, 'java大成', '进入阿里腾讯大厂一展宏图。', '2024-06-02 08:00:00', '教学楼B202'),
    (3, 'java精通', 'Hello java精通System.out各种语句。', '2024-06-03 14:00:00', 'C22宿舍5楼靠左床位'),
    (4, 'java入门', '一个人怒写java后端和前端逻辑。', '2024-06-04 09:00:00', '广城理图书馆三楼');


# 学生表创建
CREATE TABLE IF NOT EXISTS students (
                                        student_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '学生ID',
                                        student_name VARCHAR(255) COMMENT '学生姓名',
                                        gender VARCHAR(10) COMMENT '学生性别',
                                        age INT COMMENT '学生年龄',
                                        email VARCHAR(255) COMMENT '学生邮箱',
                                        contact_number VARCHAR(255) COMMENT '学生联系电话',
                                        parent_name VARCHAR(255) COMMENT '学生家长姓名',
                                        course_id INT COMMENT '报名课程ID',
                                        enrollment_status ENUM('待审核', '报名成功', '报名失败') COMMENT '报名状态',
                                        deleted TINYINT(1) DEFAULT 0 COMMENT '是否删除',
                                        FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE SET NULL
) ENGINE=InnoDB;

-- 请确保插入数据时，course_id匹配courses表中的有效课程ID。
INSERT INTO students (student_name, gender, age, email, contact_number, parent_name, enrollment_status, course_id) VALUES
        ('小丽', '女', 12, 'xiaoli@example.com', '1928-37465-626', '小丽妈妈', '待审核', 1),
        ('小强', '男', 8, 'xiaoqiang@example.com', '19283746527', '小强爸爸', '待审核', 1),
        ('小芳', '女', 9, 'xiao.fang@example.com', '19283746528', '小芳妈妈', '待审核', 2),
        ('李华', '男', 15, 'lihua@example.com', '12345678901', '李华爸爸', '待审核', 1),
        ('小明', '男', 20, 'xiaoming@example.com', '19283746524', '小明爸爸', '待审核', 2),
        ('小红', '女', 5, 'xiaohong@example.com', '19283746523', '小红妈妈', '待审核', 2),
        ('张三', '男', 15, 'zhangsan@example.com', '12345678901', '张三爸爸', '待审核', 1),
        ('李四', '女', 14, 'lisi@example.com', '12345678902', '李四妈妈', '报名成功', 2),
        ('王五', '男', 16, 'wangwu@example.com', '12345678903', '王五爸爸', '报名失败', 1);

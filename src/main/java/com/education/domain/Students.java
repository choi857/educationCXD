package com.education.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author cxd
 * @since 2024-05-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Students implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 学生ID
     */
    @TableId(value = "student_id", type = IdType.AUTO)
    private Integer studentId;

    /**
     * 学生姓名
     */
    private String studentName;

    /**
     * 学生性别
     */
    private String gender;

    /**
     * 学生年龄
     */
    private Integer age;

    /**
     * 学生邮箱
     */
    private String email;

    /**
     * 学生联系电话
     */
    private String contactNumber;

    /**
     * 学生家长姓名
     */
    private String parentName;

    /**
     * 报名课程ID
     */
    private Integer courseId;

    /**
     * 报名状态
     */
    private String enrollmentStatus;

    /**
     * 是否删除
     */
    @TableLogic
    private Boolean deleted;


}

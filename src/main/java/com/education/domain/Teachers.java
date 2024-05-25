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
public class Teachers implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 教师ID
     */
    @TableId(value = "teacher_id", type = IdType.AUTO)
    private Integer teacherId;

    /**
     * 教师姓名
     */
    private String teacherName;

    /**
     * 教师年龄
     */
    private Integer age;

    /**
     * 教师邮箱
     */
    private String email;

    /**
     * 教师介绍
     */
    private String introduction;

    /**
     * 是否删除
     */
    @TableLogic
    private Boolean deleted;


}

package com.education.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
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
public class Courses implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 课程ID
     */
    @TableId(value = "course_id", type = IdType.AUTO)
    private Integer courseId;

    /**
     * 授课老师ID
     */
    private Integer teacherId;

    /**
     * 课程名称
     */
    private String courseName;

    /**
     * 课程描述
     */
    private String courseDescription;

    /**
     * 上课时间
     */
    private LocalDateTime classTime;

    /**
     * 上课地点
     */
    private String classLocation;

    /**
     * 是否删除
     */
    @TableLogic
    private Boolean deleted;


}

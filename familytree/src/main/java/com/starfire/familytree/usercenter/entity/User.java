package com.starfire.familytree.usercenter.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.starfire.familytree.basic.entity.AbstractEntity;
import com.starfire.familytree.enums.GenderEnum;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.*;

/**
 * <p>
 *
 * </p>
 *
 * @author luzh
 * @since 2019-03-03
 */
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_user")
@Data
public class User extends AbstractEntity implements UserDetails {

    private static final long serialVersionUID = 1L;

    @TableField(exist = false)
    private List<GrantedAuthority> authorities = new ArrayList<>();

    @NotEmpty(message = "邮箱不能为空")
    @Email
    private String email;

    private Boolean firstLogin = false;

    private LocalDateTime lastLoginTime;

    private String mobile;


    @NotEmpty(message = "用户名不能为空")
    @Size(min = 2, max = 32, message = "用户名长度为2-32个字符")
    private String username;

    @NotEmpty(message = "密码不能为空")
    @Size(min = 6, max = 32, message = "密码长度为6-32个字符")
    private String password;

    private String realName;

    private LocalDateTime registerTime = LocalDateTime.now();

    private Integer type;

    private Integer age;

    @NotNull
    private GenderEnum gender= GenderEnum.不清楚;

    private Integer province;

    private Integer city;

    private Integer district;

    private String address;

    @Override
    public Collection<GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return getValid().value==1?true:false;
    }


}

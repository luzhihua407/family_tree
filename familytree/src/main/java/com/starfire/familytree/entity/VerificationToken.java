package com.starfire.familytree.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author luzh
 * @since 2019-02-19
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("verification_token")
public class VerificationToken implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long id;
    
    private String token;
   
    private Long userId;
     
    private Date expiryDate;
    
    public Date calculateExpiryDate(int expiryTimeInMinutes) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(new Timestamp(cal.getTime().getTime()));
        cal.add(Calendar.MINUTE, expiryTimeInMinutes);
        return new Date(cal.getTime().getTime());
    }

	public VerificationToken(String token, Long userId) {
		super();
		this.token = token;
		this.userId = userId;
	}

	public VerificationToken() {
		super();
	}

}

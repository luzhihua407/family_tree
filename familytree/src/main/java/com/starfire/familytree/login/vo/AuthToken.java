package com.starfire.familytree.login.vo;

import lombok.Data;

@Data
public class AuthToken {
	   private String access_token;
        private String token_type;
        private String refresh_token;
        private String expires_in;
        private String scope;
}

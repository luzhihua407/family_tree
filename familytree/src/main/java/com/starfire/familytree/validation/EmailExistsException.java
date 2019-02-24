package com.starfire.familytree.validation;


@SuppressWarnings("serial")
public class EmailExistsException extends RuntimeException {

    public EmailExistsException(final String message) {
        super(message);
    }

}
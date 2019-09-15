package com.starfire.familytree.vo;

import lombok.Data;

@Data
public class RelationshipVO {

    private Long husbandId;
    private  Long wifeId;
    private Long[] childrenIds;
}

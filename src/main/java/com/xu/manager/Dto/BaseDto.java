package com.xu.manager.Dto;

import java.io.Serializable;

@SuppressWarnings("serial")
public abstract class BaseDto implements Serializable {
	public final static String DIRECTION_DESC = "DESC";
    public final static String DIRECTION_ASC  = "ASC";

    private int                start = 0;

    /** 每页显示的限制条数 */
    private int                limit          = 20;
    private int end;

    /**
	 * @param end the end to set
	 */
	public void setEnd(int end) {
		this.end = end;
	}
	/**
     * 数据库字段名称
     */
    private String             sort;

    /**
     * 方向
     */
    private String             dir;

    private boolean            needCount;

    private int                totalCount;
    /**
     * 分页参数-每页最大数
     */
    private Integer pgLimit;
    
    
    
    public Integer getPgLimit() {
		return pgLimit;
	}
	public void setPgLimit(Integer pgLimit) {
		this.pgLimit = pgLimit;
	}
	public Integer getPgCurrentPage() {
		return pgCurrentPage;
	}
	public void setPgCurrentPage(Integer pgCurrentPage) {
		this.pgCurrentPage = pgCurrentPage;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	/**
     * 分页参数-当前页数
     */
    private Integer pgCurrentPage;
    
	private int page;// 第几页
	private int rows;// 行数

    final public int getTotalCount() {
        return totalCount;
    }

    final public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    final public void calStart() {
        if (start >= totalCount) {
            start = ((int) ((totalCount - 1) / limit)) * limit;
        }
    }

    final public void setPgNumber(int pgNumber) {
        if (pgNumber < 1)
            pgNumber = 1;

        start = (pgNumber - 1) * limit;
    }

    final public int getPgNumber() {
        return start / limit + 1;
    }

    final public int getEnd() {
        return this.start + this.limit;
    }

    final public int getStart() {
        return start;
    }

    final public void setStart(int start) {
        this.start = start;
    }

    final public int getLimit() {
        return limit;
    }

    final public void setLimit(int limit) {
        this.limit = limit;
    }

    final public boolean isNeedCount() {
        return needCount;
    }

    final public void setNeedCount(boolean needCount) {
        this.needCount = needCount;
    }

    final public String getSort() {
        return sort;
    }

    final public void setSort(String sort) {
        this.sort = sort;
    }

    final public String getDir() {
        return dir;
    }

    final public void setDir(String dir) {
        this.dir = dir;
    }

}

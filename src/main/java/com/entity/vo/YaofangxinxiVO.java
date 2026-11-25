package com.entity.vo;

import com.entity.YaofangxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 药方信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-22 23:22:56
 */
public class YaofangxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 医生账号
	 */
	
	private String yishengzhanghao;
		
	/**
	 * 医生姓名
	 */
	
	private String yishengxingming;
		
	/**
	 * 疾病名称
	 */
	
	private String jibingmingcheng;
		
	/**
	 * 药方
	 */
	
	private String yaofang;
		
	/**
	 * 剂量
	 */
	
	private String jiliang;
		
	/**
	 * 用法用量
	 */
	
	private String yongfayongliang;
		
	/**
	 * 总费用
	 */
	
	private Float zongfeiyong;
		
	/**
	 * 开药时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date kaiyaoshijian;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：医生账号
	 */
	 
	public void setYishengzhanghao(String yishengzhanghao) {
		this.yishengzhanghao = yishengzhanghao;
	}
	
	/**
	 * 获取：医生账号
	 */
	public String getYishengzhanghao() {
		return yishengzhanghao;
	}
				
	
	/**
	 * 设置：医生姓名
	 */
	 
	public void setYishengxingming(String yishengxingming) {
		this.yishengxingming = yishengxingming;
	}
	
	/**
	 * 获取：医生姓名
	 */
	public String getYishengxingming() {
		return yishengxingming;
	}
				
	
	/**
	 * 设置：疾病名称
	 */
	 
	public void setJibingmingcheng(String jibingmingcheng) {
		this.jibingmingcheng = jibingmingcheng;
	}
	
	/**
	 * 获取：疾病名称
	 */
	public String getJibingmingcheng() {
		return jibingmingcheng;
	}
				
	
	/**
	 * 设置：药方
	 */
	 
	public void setYaofang(String yaofang) {
		this.yaofang = yaofang;
	}
	
	/**
	 * 获取：药方
	 */
	public String getYaofang() {
		return yaofang;
	}
				
	
	/**
	 * 设置：剂量
	 */
	 
	public void setJiliang(String jiliang) {
		this.jiliang = jiliang;
	}
	
	/**
	 * 获取：剂量
	 */
	public String getJiliang() {
		return jiliang;
	}
				
	
	/**
	 * 设置：用法用量
	 */
	 
	public void setYongfayongliang(String yongfayongliang) {
		this.yongfayongliang = yongfayongliang;
	}
	
	/**
	 * 获取：用法用量
	 */
	public String getYongfayongliang() {
		return yongfayongliang;
	}
				
	
	/**
	 * 设置：总费用
	 */
	 
	public void setZongfeiyong(Float zongfeiyong) {
		this.zongfeiyong = zongfeiyong;
	}
	
	/**
	 * 获取：总费用
	 */
	public Float getZongfeiyong() {
		return zongfeiyong;
	}
				
	
	/**
	 * 设置：开药时间
	 */
	 
	public void setKaiyaoshijian(Date kaiyaoshijian) {
		this.kaiyaoshijian = kaiyaoshijian;
	}
	
	/**
	 * 获取：开药时间
	 */
	public Date getKaiyaoshijian() {
		return kaiyaoshijian;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}

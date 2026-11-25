package com.entity.view;

import com.entity.YishengzhenliaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 医生诊疗
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-22 23:22:56
 */
@TableName("yishengzhenliao")
public class YishengzhenliaoView  extends YishengzhenliaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YishengzhenliaoView(){
	}
 
 	public YishengzhenliaoView(YishengzhenliaoEntity yishengzhenliaoEntity){
 	try {
			BeanUtils.copyProperties(this, yishengzhenliaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}

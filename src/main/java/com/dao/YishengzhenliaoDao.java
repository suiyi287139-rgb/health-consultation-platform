package com.dao;

import com.entity.YishengzhenliaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YishengzhenliaoVO;
import com.entity.view.YishengzhenliaoView;


/**
 * 医生诊疗
 * 
 * @author 
 * @email 
 * @date 2023-03-22 23:22:56
 */
public interface YishengzhenliaoDao extends BaseMapper<YishengzhenliaoEntity> {
	
	List<YishengzhenliaoVO> selectListVO(@Param("ew") Wrapper<YishengzhenliaoEntity> wrapper);
	
	YishengzhenliaoVO selectVO(@Param("ew") Wrapper<YishengzhenliaoEntity> wrapper);
	
	List<YishengzhenliaoView> selectListView(@Param("ew") Wrapper<YishengzhenliaoEntity> wrapper);

	List<YishengzhenliaoView> selectListView(Pagination page,@Param("ew") Wrapper<YishengzhenliaoEntity> wrapper);
	
	YishengzhenliaoView selectView(@Param("ew") Wrapper<YishengzhenliaoEntity> wrapper);
	

}

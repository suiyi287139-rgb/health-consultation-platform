package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YishengzhenliaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YishengzhenliaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YishengzhenliaoView;


/**
 * 医生诊疗
 *
 * @author 
 * @email 
 * @date 2023-03-22 23:22:56
 */
public interface YishengzhenliaoService extends IService<YishengzhenliaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YishengzhenliaoVO> selectListVO(Wrapper<YishengzhenliaoEntity> wrapper);
   	
   	YishengzhenliaoVO selectVO(@Param("ew") Wrapper<YishengzhenliaoEntity> wrapper);
   	
   	List<YishengzhenliaoView> selectListView(Wrapper<YishengzhenliaoEntity> wrapper);
   	
   	YishengzhenliaoView selectView(@Param("ew") Wrapper<YishengzhenliaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YishengzhenliaoEntity> wrapper);
   	

}


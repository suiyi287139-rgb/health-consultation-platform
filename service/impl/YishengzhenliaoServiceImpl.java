package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YishengzhenliaoDao;
import com.entity.YishengzhenliaoEntity;
import com.service.YishengzhenliaoService;
import com.entity.vo.YishengzhenliaoVO;
import com.entity.view.YishengzhenliaoView;

@Service("yishengzhenliaoService")
public class YishengzhenliaoServiceImpl extends ServiceImpl<YishengzhenliaoDao, YishengzhenliaoEntity> implements YishengzhenliaoService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YishengzhenliaoEntity> page = this.selectPage(
                new Query<YishengzhenliaoEntity>(params).getPage(),
                new EntityWrapper<YishengzhenliaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YishengzhenliaoEntity> wrapper) {
		  Page<YishengzhenliaoView> page =new Query<YishengzhenliaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YishengzhenliaoVO> selectListVO(Wrapper<YishengzhenliaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YishengzhenliaoVO selectVO(Wrapper<YishengzhenliaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YishengzhenliaoView> selectListView(Wrapper<YishengzhenliaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YishengzhenliaoView selectView(Wrapper<YishengzhenliaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}

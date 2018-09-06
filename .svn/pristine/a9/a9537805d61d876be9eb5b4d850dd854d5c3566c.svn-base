package com.gstore.action.front;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.gstore.action.vo.SearchVO;
import com.gstore.common.action.AnonymousAction;
import com.gstore.service.front.IHomeService;

@Component(value = "HomeAction")
@Scope("prototype")
public class HomeAction extends AnonymousAction implements IHomeAction {

	private static final long serialVersionUID = 5183460693355631041L;
	private Logger logger = Logger.getLogger(HomeAction.class);
	@Resource(name = "HomeService")
	private IHomeService svc;

	private List<Map> items;

	@Override
	public String execute() throws Exception {
		SearchVO vo = new SearchVO();
		List<Map> items = svc.searchGlasses(vo);
		this.setItems(items);
		return SUCCESS;
	}

	public List<Map> getItems() {
		return items;
	}

	public void setItems(List<Map> items) {
		this.items = items;
	}

}

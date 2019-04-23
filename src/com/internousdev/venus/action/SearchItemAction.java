package com.internousdev.venus.action;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.venus.dao.ProductInfoDAO;
import com.internousdev.venus.dto.ProductInfoDTO;
import com.internousdev.venus.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class SearchItemAction extends ActionSupport implements SessionAware {
	private String categoryId;
	private String keywords;
	private List<String> keywordsErrorMessageList;
	private List<ProductInfoDTO> productInfoDTOList;
	private Map<String, Object> session;

	public String execute() {
		if (session.isEmpty()) {
			return "sessionTimeout";
		}

		InputChecker check = new InputChecker();

		String tempKeywords = null;

		// 処理用の変数に値を...
		if (StringUtils.isBlank(keywords)) {
			tempKeywords = "";
		} else {
			tempKeywords = keywords.replace("　", " ").replaceAll("\\s{2,}", " ");
		}

		if (!(tempKeywords.equals(""))) {
			keywordsErrorMessageList = check.doCheck("検索ワード", keywords, 0, 50, true, true, true, true, false, true, true);

			if (keywordsErrorMessageList.size() > 0) {
				return SUCCESS;
			}
		}

		ProductInfoDAO productInfoDAO =new ProductInfoDAO();
		switch(categoryId){
//1のすべてのカテゴリーの場合、
		case "1":productInfoDTOList=productInfoDAO.getProductInfoListAll(tempKeywords.split(" "));
		break;

//それ以外のカテゴリー2～5
		default:productInfoDTOList=productInfoDAO.getProductInfoListByKeywords(tempKeywords.split(" "),categoryId);
		break;

		}
		return SUCCESS;


	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getKeywords() {
		return keywords;
	}

	public List<ProductInfoDTO> getProductInfoDTOList() {
		return productInfoDTOList;
	}

	public void setProductInfoDTOList(List<ProductInfoDTO> productInfoDTOList) {
		this.productInfoDTOList = productInfoDTOList;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public List<String> getKeywordsErrorMessageList() {
		return keywordsErrorMessageList;
	}

	public void setKeywordsErrorMessageList(List<String> keywordsErrorMessageList) {
		this.keywordsErrorMessageList = keywordsErrorMessageList;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

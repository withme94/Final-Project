package kr.co.vo;

import java.util.List;

public class PlaceVO {
	
	private int cno;
	private String contentId;
	private int orders;

	private List<PlaceVO> placeList;
	
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getContentId() {
		return contentId;
	}
	public void setContentId(String contentId) {
		this.contentId = contentId;
	}
	public int getOrders() {
		return orders;
	}
	public void setOrders(int orders) {
		this.orders = orders;
	}
	@Override
	public String toString() {
		return "PlaceVO [cno=" + cno + ", contentId=" + contentId + ", orders=" + orders + "]";
	}
	public List<PlaceVO> getPlaceList() {
		return placeList;
	}
	public void setPlaceList(List<PlaceVO> placeList) {
		this.placeList = placeList;
	}
}

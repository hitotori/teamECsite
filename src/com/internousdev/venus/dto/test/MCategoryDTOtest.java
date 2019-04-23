package com.internousdev.venus.dto.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.internousdev.venus.dto.MCategoryDTO;

public class MCategoryDTOtest {

	@Test
	public void testGetId1() {
		MCategoryDTO dto=new MCategoryDTO();
		int expected=0;

		dto.setId(expected);
		int actual=dto.getId();
		assertEquals(expected,actual);


	}

	@Test
	public void testGetId2(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=2147483647;

		dto.setId(expected);
		int actual=dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetId3(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=-2147483647;

		dto.setId(expected);
		int actual=dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetId4() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMax=Integer.parseInt("2147483648");
			dto.setId(postalMax);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string: \"2147483648\"");
		}
	}

	@Test
	public void testGetId5() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMin=Integer.parseInt("-2147483648");
			dto.setId(postalMin);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string: \"-2147483648\"");
		}
	}

	//set Id Test
	@Test
	public void testSetId1() {
		MCategoryDTO dto=new MCategoryDTO();
		int expected=0;

		dto.setId(expected);
		int actual=dto.getId();
		assertEquals(expected,actual);



	}

	@Test
	public void testSetId2(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=2147483647;

		dto.setId(expected);
		int actual=dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetId3(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=-2147483647;

		dto.setId(expected);
		int actual=dto.getId();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetId4() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMax=Integer.parseInt("2147483648");
			dto.setId(postalMax);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string: \"2147483648\"");
		}
	}

	@Test
	public void testSetId5() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMin=Integer.parseInt("-2147483648");
			dto.setId(postalMin);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string:\"-2147483648\"");
		}
	}




	//get CategoryIdTest
	@Test
	public void testGetCategoryId1() {
		MCategoryDTO dto=new MCategoryDTO();
		int expected=0;

		dto.setCategoryId(expected);
		int actual=dto.getCategoryId();
		assertEquals(expected,actual);


	}

	@Test
	public void testGetCategoryId2(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=2147483647;

		dto.setCategoryId(expected);
		int actual=dto.getCategoryId();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryId3(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=-2147483647;

		dto.setCategoryId(expected);
		int actual=dto.getCategoryId();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryId4() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMax=Integer.parseInt("2147483648");
			dto.setCategoryId(postalMax);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string: \"2147483648\"");
		}
	}

	@Test
	public void testGetCategoryId5() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMin=Integer.parseInt("-2147483648");
			dto.setCategoryId(postalMin);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string: \"-2147483648\"");
		}
	}

	//set Id Test
	@Test
	public void testSetCategoryId1() {
		MCategoryDTO dto=new MCategoryDTO();
		int expected=0;

		dto.setCategoryId(expected);
		int actual=dto.getCategoryId();
		assertEquals(expected,actual);



	}

	@Test
	public void testSetCategoryId2(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=2147483647;

		dto.setCategoryId(expected);
		int actual=dto.getCategoryId();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryId3(){
		MCategoryDTO dto=new MCategoryDTO();
		int expected=-2147483647;

		dto.setCategoryId(expected);
		int actual=dto.getCategoryId();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryId4() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMax=Integer.parseInt("2147483648");
			dto.setCategoryId(postalMax);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string: \"2147483648\"");
		}
	}

	@Test
	public void testSetCategoryId5() throws Exception{
		MCategoryDTO dto=new MCategoryDTO();
		try{
			int postalMin=Integer.parseInt("-2147483648");
			dto.setCategoryId(postalMin);
		}catch(RuntimeException e){
			assertEquals(e.getMessage(),"For input string:\"-2147483648\"");
		}
	}






	//get CategoryNameTest
	@Test
	public void testGetCategoryName1() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected="0";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);


	}

	@Test
	public void testGetCategoryName2(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="2147483647";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName3(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="-2147483647";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName4(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="null";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName5(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	//get CategoryIdTest
	@Test
	public void testGetCategoryName6() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected=" ";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);


	}

	@Test
	public void testGetCategoryName7(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="　";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName8(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName9(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="あいう１２３";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName10(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123あいう１２３";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName11(){
		MCategoryDTO dto= new MCategoryDTO();
		String expected="abc123あいう１２３漢字";

		dto.setCategoryName(expected);
		String actual =dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryName12(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	//set CategoryName Test
	@Test
	public void testSetCategoryName1() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected="0";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName2(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="2147483647";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName3(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="-2147483647";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName4(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="null";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName5(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName6() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected=" ";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName7(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="　";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName8(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName9(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="あいう１２３";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName10(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123あいう１２３";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName11(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123あいう１２３漢字";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryName12(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setCategoryName(expected);
		String actual=dto.getCategoryName();
		assertEquals(expected,actual);
	}







	//get CategoryNameTest
	@Test
	public void testGetCategoryDescription1() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected="0";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);


	}

	@Test
	public void testGetCategoryDescription2(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="2147483647";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription3(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="-2147483647";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription4(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="null";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription5(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	//get CategoryIdTest
	@Test
	public void testGetCategoryDescription6() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected=" ";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription7(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="　";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription8(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription9(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="あいう１２３";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription10(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123あいう１２３";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription11(){
		MCategoryDTO dto= new MCategoryDTO();
		String expected="abc123あいう１２３漢字";

		dto.setCategoryDescription(expected);
		String actual =dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testGetCategoryDescription12(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	//set CategoryName Test
	@Test
	public void testSetCategoryDescription1() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected="0";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription2(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="2147483647";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription3(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="-2147483647";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription4(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="null";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription5(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription6() {
		MCategoryDTO dto=new MCategoryDTO();
		String expected=" ";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription7(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="　";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription8(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription9(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="あいう１２３";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription10(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123あいう１２３";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription11(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="abc123あいう１２３漢字";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

	@Test
	public void testSetCategoryDescription12(){
		MCategoryDTO dto=new MCategoryDTO();
		String expected="ａｂｃあいう１２３漢字";

		dto.setCategoryDescription(expected);
		String actual=dto.getCategoryDescription();
		assertEquals(expected,actual);
	}

}

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src="./js/header.js"></script>

<header>

	<ul class="headerul">


		<s:form id="form" name="form">

			<li class="headerli">
			<a href='<s:url action="HomeAction"/>' class="title">
					Venus<img src="images/header.jpg" class="headerimg" />
				</a>
			</li>

			<s:if test='#session.containsKey("mCategoryDTOList")'>
				<li class="headerli"><s:select list="#session.mCategoryDTOList"
						name="categoryId" listValue="categoryName" listKey="categoryId"
						id="categoryId"  class="searchword2"/></li>
			</s:if>

			<li class="headerli"><s:textfield name="keywords" class="searchword"
					placeholder="検索ワード" /></li>


			<li class="headerli"><s:submit value="商品検索"
					onclick="goSearchItemAction();" class="btn" /></li>


			<s:if test="#session.logined==1">
				<li class="headerli"><s:submit value="ログアウト"
						onclick="goLogoutAction();" class="btn" /></li>
			</s:if>
			<s:else>
				<li class="headerli"><s:submit value="ログイン"
						onclick="goGoLoginAction();" class="btn" /></li>
			</s:else>


			<li class="headerli"><s:submit value="カート"
					onclick="goCartAction();" class="btn" /></li>


			<li class="headerli"><s:submit value="商品一覧"
					onclick="goProductListAction();" class="btn" /></li>

			<s:if test="#session.logined==1">
				<li class="headerli"><s:submit value="マイページ"
						onclick="goMyPageAction();" class="btn" /></li>
			</s:if>

		</s:form>
	</ul>
</header>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>onlyShop</title>
    <link href="${pageContext.request.contextPath}/css/myIndex.css"
          rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
</head>
<body>
<div class="wapper">
    <div class="header">
        <div class="topNav">
            <ul>
                <s:if test="#session.existUser == null">
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <a href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>|</li>
                    <li id="headerRegister" class="headerRegister"
                        style="display: list-item;"><a href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>|
                    </li>
                </s:if>
                <s:else>
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <s:property value="#session.existUser.name"/>
                        |</li>
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <a href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>
                        |</li>
                    <li id="headerRegister" class="headerRegister"
                        style="display: list-item;"><a href="${ pageContext.request.contextPath }/user_quit.action">退出</a>|
                    </li>
                </s:else>
                <li><a>会员中心</a> |</li>
                <li><a>购物指南</a> |</li>
                <li><a>关于我们</a> |</li>
                <li><a><a href="${ pageContext.request.contextPath }/cart_myCart.action">购物车</a></a></li>
            </ul>
        </div>
        <div class="lunbo">
            <div class="lunboPic">
            	<div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/slide1.png" alt="" /></div>
                        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/slide2.png" alt="" /></div>
                        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/slide4.png" alt="" /></div>
                    	<div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/slide4.png" alt="" /></div>
                    </div>
                    <!-- 如果需要分页器 -->
                    <div class="swiper-pagination"></div>

                    <!-- 如果需要导航按钮 -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>

                </div>
 			</div>
            <div class="search">搜索框</div>
        </div>
        <div class="span24">
            <ul class="mainNav">
                <li><a href="${ pageContext.request.contextPath }/index.action">首页</a> |</li>
                <s:iterator var="c" value="#session.cList">
                    <li><a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"/></a> |</li>
                </s:iterator>

            </ul>
        </div>
    </div>
    <div class="midContent">
            <div class="left_fenlei">
                <div class="span6">
                	<div class="title">商品分类</div>
                    <div class="hotProductCategory">
                        <s:iterator var="c" value="#session.cList">
                            <dl>
                                <dt>
                                    <a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"/></a>
                                </dt>
                                <s:iterator var="cs" value="#c.categorySeconds">
                                    <dd>
                                        <a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property value="#cs.csname"/></a>
                                    </dd>
                                </s:iterator>
                            </dl>
                        </s:iterator>
                    </div>
                </div>
            </div>
            <div class="right">
                <div class="span24">
                    <div id="hotProduct" class="hotProduct ">
                        <div class="title">
                            <strong>热门商品</strong>
                        </div>              
				<ul class="tabContent" style="display: block;">
					<s:iterator var="p" value="hList">
						<li><a
							href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
							target="_blank"><img
								src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
								data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg"
								style="display: block;">
						</a>
						</li>
					</s:iterator>
				</ul>
		
			
                    </div>
                </div>
                <div class="span24">
                    <div id="newProduct" class="newProduct clearfix">
                        <div class="title">
                            <strong>最新商品</strong> <a target="_blank"></a>
                        </div>

				<ul class="tabContent" style="display: block;">
					<s:iterator var="p" value="nList">
						<li><a
							href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
							target="_blank"><img
								src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
								data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg"
								style="display: block;">
						</a>
						</li>
						</li>
					</s:iterator>
				</ul>
                    </div>
                </div>
            </div>
    </div>
    <div class="span24">
    	  <div class="fashion">
        <div class="title">
            <strong>潮流搭配</strong>
        </div>   
				<ul class="tabContent" style="display: block;">
					<s:iterator var="p" value="nList">
						<li><a
							href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
							target="_blank"><img
								src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
								data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg"
								style="display: block;">
						</a>
						</li>
						</li>
					</s:iterator>
				</ul>
				
    </div>
    </div>
  
    <div class="footer">
        <div class="footer_pic_new">
            <div class="footer_pic_new_inner">
                <a name="foot_1" class="footer_pic01" target="_blank" href=""><span>正规渠道正品保障</span></a>
                <a name="foot_2" class="footer_pic02" target="_blank" href=""><span>放心购物货到付款</span></a>
                <a name="foot_3" class="footer_pic03" target="_blank" href=""><span>150城市次日送达</span></a>
                <a name="foot_4" class="footer_pic04" target="_blank" href=""><span>上门退换 购物无忧</span></a>
            </div>
        </div>
        <div class="span24">
            <ul class="bottomNav">
                <li>
                    <a >公司简介</a>
                    |
                </li>
                <li>
                    <a>网站联盟</a>
                    |
                </li>
                <li>
                    <a >诚聘英才</a>
                    |
                </li>
                <li>
                    <a >唯衣招商</a>
                    |
                </li>
                <li>
                    <a >热词搜索</a>
                    |
                </li>
                <li>
                    <a >法律声明</a>
                    |
                </li>
                <li>
                    <a>友情链接</a>
                    |
                </li>
                <li>
                    <a target="_blank">支付方式</a>
                    |
                </li>
                <li>
                    <a  target="_blank">配送方式</a>
                    |
                </li>
                <li>
                    <a >官网</a>
                    |
                </li>
                <li>
                    <a >论坛</a>

                </li>
            </ul>
        </div>
        <div class="span24">
            <div class="copyright">Copyright©20018-2025 唯衣购物商城 版权所有</div>
        </div>
        </div>
</div>
<script src="${ pageContext.request.contextPath }/js/swiper.min.js"></script>
<script>
    var mySwiper = new Swiper('.swiper-container', {
        direction: 'horizontal',
        loop: true,

        // 如果需要分页器
        pagination: {
            el: '.swiper-pagination',
        },

        // 如果需要前进后退按钮
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    })
</script>
</body>
</html>

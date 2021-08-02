<%@page import="org.apache.catalina.ha.tcp.SendMessageData"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Smooth Scrolling Image Effects | Demo 1 | Codrops</title>
<meta name="description"
   content="A set of ideas of animating images and other elements while smooth scrolling a page." />
<meta name="keywords"
   content="smooth scrolling, animation, scroll, website, images, web development, javascript" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="https://use.typekit.net/dec4mzz.css">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" href="css/style.css" />

<% MemberDTO member = (MemberDTO)session.getAttribute("member"); 
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
	%>
	   

<script>
   document.documentElement.className = "js";
   var supportsCssVars = function() {
      var e, t = document.createElement("style");
      return t.innerHTML = "root: { --tmp-var: bold; }", document.head
            .appendChild(t),
            e = !!(window.CSS && window.CSS.supports && window.CSS
                  .supports("font-weight", "var(--tmp-var)")),
            t.parentNode.removeChild(t), e
   };
   supportsCssVars()
         || alert("Please view this demo in a modern browser that supports CSS Variables.");
</script>
<style>
@import
   url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap')
   ;

@import
   url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap')
   ;
   
@import
   url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap')
   ;   
   
</style>
</head>
<body class="demo-1 loading" style = "background-color : #FDD2BF;  color : #492F10;">
   <main>
         <div data-scroll class="page page--layout-2"
         style="transform: translate3d(0px, 0px, 0px); padding-bottom: 1px;">
         <h1 class="page__title" style="font-size: 100px">
            <a href="main.jsp"><img src="./img/logo.png"
               style="width: 400px; height: 150px; margin: 50px 0 0 -50px;" /></a>
         </h1>
         <div class="meta">
            <div class="meta__links">
               <!-- <a href="login.jsp"
                  style="width: 80px; height: 30px; margin: 0 0 0 250px;">
                  <a href="login.jsp" style ="margin: 0 0 0 400px;"> # �α���</a>
               </a> -->
                <!-- <a href="login.jsp" style="width:80px; height:60px; margin :0 0 0 530px; font-size:35px ; font-family: 'Nanum Pen Script', cursive;"> #�α��� </a> --> 
 				
 				<%if(id!=null){ %>
				<a href="DeleteCon" style="width:80px; height:60px; margin :0 0 0 530px; font-size:35px ; font-family: 'Nanum Pen Script', cursive;">�α׾ƿ�</a>
				<% }else{%>
				<a href="login2.jsp" style="width:80px; height:60px; margin :0 0 0 530px; font-size:35px ; font-family: 'Nanum Pen Script', cursive;">�α���</a>
				<%} %>
 				
 
            </div>
            <div class="meta__demos">
            <div class="meta__demos">
               <a href="index.html" class="meta__demo meta__demo--current" style="font-size: 45px;  margin: 0 0 20px 0; font-family: 'Nanum Pen Script', cursive;">
               ī�װ�</a>
            </div>
            <div class="meta__demos" style="margin: -40px 5px 0 -10px;">
               <div class="meta__links"></div>
            </div>
            <div class="meta__demos" style="
    width: 700px;">
               <a href="index_hanok.html" 
                  style="font-size: 40px; color: #492F10; font-family: 'Nanum Pen Script', cursive;">#�ѿ�������</a>
               <a href="index_couple.html" class="meta__demo"
                  style="font-size: 40px; font-family: 'Nanum Pen Script', cursive;">#Ŀ�ü���</a>
               <a href="index_gamsung.html" class="meta__demo"
                  style="font-size: 40px; font-family: 'Nanum Pen Script', cursive;">#��������</a>

               <a href="index_pool.html" class="meta__demo"
                  style="font-size: 40px; font-family: 'Nanum Pen Script', cursive;">#Ǯ����
               </a><a href="index_healing.html" class="meta__demo meta__demo--current" class="meta__demo"
                  style="font-size: 40px; font-family: 'Nanum Pen Script', cursive;">#��������</a>

            </div>
         </div>
      </div>
         <div class="content content--full content--alternate">
            <div class="content__item content__item--wide">
               <!-- <span class="content__item-number">01</span> -->
               <div class="content__item-imgwrap">
                  <div class="content__item-img">
                     <!-- �����̵��  -->
                     <ul class="slides">
                        <input type="radio" name="radio-btn1" id="hanok_1_1" checked />
                        <li class="slide-container">
                           <div class="slide" >
                              <img src="./img/healing/healing_1_1.jpg"/>
                           </div>
                           <div class="nav">
                              <label for="hanok_1_4" class="prev"></label> <label
                                 for="hanok_1_2" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn1" id="hanok_1_2" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_1_2.jpg"/>
                           </div>
                           <div class="nav">
                              <label for="hanok_1_1" class="prev"></label> <label
                                 for="hanok_1_3" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn1" id="hanok_1_3" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_1_3.jpg" />
                           </div>
                           <div class="nav">
                              <label for="hanok_1_2" class="prev"></label> <label
                                 for="hanok_1_4" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn1" id="hanok_1_4" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_1_4.jpg"/>
                           </div>
                           <div class="nav">
                              <label for="hanok_1_3" class="prev"></label> <label
                                 for="hanok_1_1" class="next"></label>
                           </div>
                        </li>
                        <li class="nav-dots"><label for="hanok_1_1" class="nav-dot"
                           id="hanok_1_1_dot"></label> <label for="hanok_1_2"
                           class="nav-dot" id="hanok_1_2_dot"></label> <label
                           for="hanok_1_3" class="nav-dot" id="hanok_1_3_dot"></label> <label
                           for="hanok_1_4" class="nav-dot" id="hanok_1_4_dot"></label></li>
                     </ul>
                     <!--�����̵� ������ �κ�  -->
                  </div>
               </div>
               <!-- <div class="content__item-deco"></div> -->
               <h2 class="content__item-title">��������<pre style="margin: 0rem 2rem; font-size : 40px; font-family: 'Nanum Pen Script', cursive;">
            
   #��õ #����                                                         <a href = "map.jsp">�����ϱ�</a></h2>
               <p class="content__item-description">
               <!-- <pre class = "pre_item" style = "margin: 0rem 2rem;"> #��õ #���</pre> -->
               </p>
            </div>
            <div class="content__item content__item--wide">
               <!-- <span class="content__item-number">02</span> -->
               <div class="content__item-imgwrap">
                  <div class="content__item-img">
                     <!-- �����̵� ���� -->
                     <ul class="slides">
                        <input type="radio" name="radio-btn2" id="hanok_2_1" checked />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_2_1.jpeg" />
                           </div>
                           <div class="nav">
                              <label for="hanok_2_4" class="prev"></label> <label
                                 for="hanok_2_2" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn2" id="hanok_2_2" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_2_2.jpeg" />
                           </div>
                           <div class="nav">
                              <label for="hanok_2_1" class="prev"></label> <label
                                 for="hanok_2_3" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn2" id="hanok_2_3" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_2_3.jpeg" />
                           </div>
                           <div class="nav">
                              <label for="hanok_2_2" class="prev"></label> <label
                                 for="hanok_2_4" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn2" id="hanok_2_4" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_2_4.jpeg" />
                           </div>
                           <div class="nav">
                              <label for="hanok_2_3" class="prev"></label> <label
                                 for="hanok_2_1" class="next"></label>
                           </div>
                        </li>


                        <li class="nav-dots"><label for="hanok_2_1" class="nav-dot"
                           id="hanok_2_1_dot"></label> <label for="hanok_2_2" class="nav-dot"
                           id="hanok_2_2_dot"></label> <label for="hanok_2_3" class="nav-dot"
                           id="hanok_2_3_dot"></label> <label for="hanok_2_4" class="nav-dot"
                           id="hanok_2_4_dot"></label></li>
                     </ul>
                     <!-- �����̵� �� -->
                  </div>
               </div>
               <!-- <div class="content__item-deco"></div> -->
               <h2 class="content__item-title">������<pre style="margin: 0rem 2rem; font-size : 40px; font-family: 'Nanum Pen Script', cursive;">
            
   #���� #����                                                         <a href = "map.jsp">�����ϱ�</a></h2>
               <p class="content__item-description">
               <!-- <pre style = "margin: 0rem 2rem;">#���� #���</pre> -->
               </p>
            </div>
            <div class="content__item content__item--wide">
               <div class="content__item-imgwrap">
                  <div class="content__item-img">
                  <!-- �����̵� ���� -->
                     <ul class="slides">
                        <input type="radio" name="radio-btn3" id="hanok_3_1" checked />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_3_1.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_3_4" class="prev"></label> <label
                                 for="hanok_3_2" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn3" id="hanok_3_2" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_3_2.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_3_1" class="prev"></label> <label
                                 for="hanok_3_3" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn3" id="hanok_3_3" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_3_3.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_3_2" class="prev"></label> <label
                                 for="hanok_3_4" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn3" id="hanok_3_4" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_3_4.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_3_3" class="prev"></label> <label
                                 for="hanok_3_1" class="next"></label>
                           </div>
                        </li>
                        <li class="nav-dots"><label for="hanok_3_1" class="nav-dot"
                           id="hanok_3_1_dot"></label> <label for="hanok_3_2" class="nav-dot"
                           id="hanok_3_2_dot"></label> <label for="hanok_3_3" class="nav-dot"
                           id="hanok_3_3_dot"></label> <label for="hanok_3_4" class="nav-dot"
                           id="hanok_3_4_dot"></label></li>
                     </ul>
                     <!-- �����̵� �� -->                  
                  </div>
               </div>
               <!-- <div class="content__item-deco"></div> -->
               <h2 class="content__item-title">��������<pre style="margin: 0rem 2rem; font-size : 40px; font-family: 'Nanum Pen Script', cursive;">
            
   #���� #����                                                         <a href ="map.jsp">�����ϱ�</a></h2></h2>
               <p class="content__item-description">
               <!-- <pre style = "margin: 0rem 2rem;">#���� #���</pre> -->
               </p>
            </div>
            <div class="content__item content__item--wide">
               <div class="content__item-imgwrap">
                  <div class="content__item-img">
                  <!-- �����̵� ���� -->
                     <ul class="slides">
                        <input type="radio" name="radio-btn4" id="hanok_4_1" checked />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_4_1.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_4_4" class="prev"></label> <label
                                 for="hanok_4_2" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn4" id="hanok_4_2" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_4_2.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_4_1" class="prev"></label> <label
                                 for="hanok_4_3" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn4" id="hanok_4_3" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_4_3.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_4_2" class="prev"></label> <label
                                 for="hanok_4_4" class="next"></label>
                           </div>
                        </li>

                        <input type="radio" name="radio-btn4" id="hanok_4_4" />
                        <li class="slide-container">
                           <div class="slide">
                              <img src="./img/healing/healing_4_4.jfif" />
                           </div>
                           <div class="nav">
                              <label for="hanok_4_3" class="prev"></label> <label
                                 for="hanok_4_1" class="next"></label>
                           </div>
                        </li>
                        <li class="nav-dots"><label for="hanok_4_1" class="nav-dot"
                           id="hanok_4_1_dot"></label> <label for="hanok_4_2" class="nav-dot"
                           id="hanok_4_2_dot"></label> <label for="hanok_4_3" class="nav-dot"
                           id="hanok_4_3_dot"></label> <label for="hanok_4_4" class="nav-dot"
                           id="hanok_4_4_dot"></label></li>
                     </ul>
                     <!-- �����̵� �� -->
                  </div>
               </div>
               <!-- <div class="content__item-deco"></div> -->
               <h2 class="content__item-title">�˽��� �ϵ�<pre style="margin: 0rem 2rem; font-size : 40px; font-family: 'Nanum Pen Script', cursive;">
            
   #�ϵ� #����                                                         <a href = "map.jsp">�����ϱ�</a></h2></h2>
               <p class="content__item-description">
               <!-- <pre style = "margin: 0rem 2rem;">#�ϵ� #����Ʈ</pre> -->
               </p>
            </div>
            <p class="credits">
               Made by <a href=""> InStay</a>
            </p>
         </div>
      </div>
   </main>
   <script src="js/imagesloaded.pkgd.min.js"></script>
   <script src="js/demo.js"></script>
</body>
</html>
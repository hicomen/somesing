<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
 	<%@ include file="/WEB-INF/views/mw/kor/common/inc/include.jsp"%>
 	<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback" async defer></script>
 	<%@ include file="/WEB-INF/views/common/common-script.jsp"%>
</head>
<body class="sub-type sub-type1">
  <div class="viewport">
    <div class="view-container">
      <div class="container--wide container--wide-visual">
        <div class="container--wide-col">
          <div class="col-top">
            <!-- HEADER : [S] -->
            <header class="gnb">
  				<%@ include file="/WEB-INF/views/mw/kor/common/inc/header.jsp"%>
			</header>
            <!-- HEADER : [E] -->
          </div>
          <div class="col-middle">
            <section class="content-container">
              <article class="sign-input">
                <div class="sign-input__header">
                  <h3 class="header-heading heading heading--sub2">WELCOME</h3>
                  <p class="sign-input__header-desc">Sign in by entering the information below</p>
                </div>
                <!-- sign-input__header//end -->
                <div class="sign-input__form">
                  <form method="post" name="loginForm" id="loginForm" action="/user/login/action">
                  	<input type="hidden" name="login_username" id="login_username" value="" />
                    <fieldset>
                      <legend>login input form</legend>
                      <div class="input-field input-field--login">
                        <div class="input-field__item">
                          <div class="input-text input-text--type1">
                            <input type="text" id="login_id" name="login_id" />
                            <label for="input-id" class="label label-text--type1">ID (E-mail Adress)</label>
                          </div>
                        </div>
                        <!-- input-field__item//end -->
                        <div class="input-field__item">
                          <div class="input-text input-text--type1">
                            <input type="password" id="login_pwd" name="login_pwd" />
                            <label for="input-pw" class="label label-text--type1">Password</label>
                          </div>
                        </div>
                        <!-- input-field__item//end -->
                        <div class="input-field__item">
                          <div class="btn-group btn-group--right">
                            <a href="<c:url value='/user/login/pw/request' />" class="btn btn-link1">Forgot password</a>
                          </div>
                        </div>
                        <!-- input-field__item//end -->
                        <div class="input-field__item" id="error-area">
                          <div class="input-error">
                            <p class="input-error__desc">이메일 또는 비밀번호를 확인해주세요.</p>
                          </div>
                        </div>
                        <!-- input-field__item//end -->
                      </div>
                      <!-- input-field//end -->
                     <div class="google-robot" id="google-robot">
                    </div>
                      </div>
                      <div class="btn-group">
                        <button type="button" class="btn btn-color1" id="btn-sign-in">Sign in</button>
                      </div>
                    </fieldset>
                  </form>
                </div>
                <!-- sign-input__form//end -->
                <div class="sign-info">
                  <p class="sign-info__desc">Don’t have an account? <a href="<c:url value='/user/signUp' />" class="btn btn-link1">SIGN UP</a> Now</p>
                </div>
                <!-- sign-info//end -->
              </article>
              <!-- sign-notice//end -->
            </section>
          </div>
          <div class="col-bottom">
            <!-- FOOTER : [S] -->
            <footer class="footer">
    <p class="footer-copy">©2018 SOMESING. All Copyrights reserved  </p>
</footer>
            <!-- FOOTER : [E] -->
          </div>
        </div>
        <!-- //end -->
      </div>
      <!-- //end -->
    </div>
    <!-- view-container//end -->
  </div>
  <!-- viewport//end -->
  </body>
</html>
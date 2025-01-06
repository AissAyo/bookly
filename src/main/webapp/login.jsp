<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bookly-Log in/Sign up</title>
<%@ include file="/include/css.jsp" %>
</head>
<body class="main-layout inner_page" 
      style="background-image: url('<%= request.getContextPath() %>/template/images/library4k.jpg'); 
             background-position: center; background-repeat: no-repeat;">
<%@ include file="/include/header.jsp" %>
<br>
<br>
<br>
<br>
<br><br>
<br>    
<div class="cont">
    <div class="form sign-in">
        <h2>Welcome</h2>
        <form action="<%= request.getContextPath() %>/loginservelet" method="post">
            <label>
                <span>Email</span>
                <input type="email" name="email"/>
            </label>
            <label>
                <span>Password</span>
                <input type="password" name="password"/>
            </label>
            <p class="forgot-pass">Forgot password?</p>
            <button type="submit" class="submit">Sign In</button>
        </form>
    </div>
    <div class="sub-cont">
        <div class="img">
            <div class="img__text m--up">
                <h3>Don't have an account? Please Sign up!</h3>
            </div>
            <div class="img__text m--in">
                <h3>If you already have an account, just sign in.</h3>
            </div>
            <div class="img__btn">
                <span class="m--up">Sign Up</span>
                <span class="m--in">Sign In</span>
            </div>
        </div>
        <form action="<%= request.getContextPath() %>/sign" method="post">
            <div class="form sign-up">
                <h2>Create your Account</h2>
                <label>
                    <span>Name</span>
                    <input type="text" name="name"/>
                </label>
                <label>
                    <span>Email</span>
                    <input type="email" name="email"/>
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password" />
                </label>
                <button type="submit" class="submit">Sign Up</button>
            </div>
        </form>
    </div>
</div>
<%@ include file="/include/footer.jsp" %>

<script>
    document.querySelector('.img__btn').addEventListener('click', function() {
        document.querySelector('.cont').classList.toggle('s--signup');
    });
</script>
</body>
</html>

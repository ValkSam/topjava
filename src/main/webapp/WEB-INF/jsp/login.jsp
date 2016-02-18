<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<jsp:include page="fragments/headTag.jsp"/>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header navbar-brand"><fmt:message key="app.title"/></div>
        <div class="navbar-collapse collapse">
            <form:form class="navbar-form navbar-right" role="form" action="spring_security_check" method="post">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control" name='username'>
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control" name='password'>
                </div>
                <button type="submit" class="btn btn-success"><fmt:message key="app.login"/></button>
            </form:form>
        </div>
    </div>
</div>

<div class="jumbotron">
    <div class="container">
        <c:if test="${error}">
            <div class="error">
                    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>
        <c:if test="${not empty message}">
            <div class="message">
                <fmt:message key="${message}"/>
            </div>
        </c:if>
        <p>

        <p>User login: <b>user@yandex.ru / password</b></p>

        <p>Admin login: <b>admin@gmail.com / admin</b></p>

        <p><a class="btn btn-primary btn-lg" role="button" href="register">Register &raquo;</a></p>

        <p>Technology stack: <span href="http://projects.spring.io/spring-security/">Spring Security</span>,
            <span href="http://docs.spring.io/spring/docs/current/spring-framework-reference/html/mvc.html">Spring MVC</span>,
            <span href="http://projects.spring.io/spring-data-jpa/">Spring Data JPA</span>,
            <span href="http://spring.io/blog/2014/05/07/preview-spring-security-test-method-security">Spring Security
                Test</span>,
            <span href="http://hibernate.org/orm/">Hibernate ORM</span>,
            <span href="http://hibernate.org/validator/">Hibernate Validator</span>,
            <span href="http://www.slf4j.org/">SLF4J</span>,
            <span href="https://github.com/FasterXML/jackson">Json Jackson</span>,
            <span href="http://ru.wikipedia.org/wiki/JSP">JSP</span>,
            <span href="http://en.wikipedia.org/wiki/JavaServer_Pages_Standard_Tag_Library">JSTL</span>,
            <span href="http://tomcat.apache.org/">Apache Tomcat</span>,
            <span href="http://www.webjars.org/">WebJars</span>,
            <span href="http://datatables.net/">DataTables plugin</span>,
            <span href="http://ehcache.org">Ehcache</span>,
            <span href="http://www.postgresql.org/">PostgreSQL</span>,
            <span href="http://junit.org/">JUnit</span>,
            <span href="http://hamcrest.org/JavaHamcrest/">Hamcrest</span>,
            <span href="http://jquery.com/">jQuery</span>,
            <span href="http://ned.im/noty/">jQuery notification</span>,
            <span href="http://getbootstrap.com/">Bootstrap</span>.</p>
    </div>
</div>
<div class="container">
    <div class="lead">
        &nbsp;&nbsp;&nbsp;Приложение с регистрацией/авторизацией пользователя и интерфейсом на основе ролей (ROLE_USER, ROLE_ADMIN).
        Администратор может управлять (редактировать/удалять/создавать) пользователями.
        Пользователь может ограниченно редактировать и просматривать свои
        данные.
        <br/>
        Весь REST интерфейс покрывается JUnit тестами, используя Spring MVC Test и Spring Security Test
    </div>
</div>
<jsp:include page="fragments/footer.jsp"/>
</body>
</html>


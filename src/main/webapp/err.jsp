<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty short_message}">
  ${pageContext.servletContext.getAttribute("i18n").getMsg('an_error')}
</c:if>
<c:if test="${not empty short_message}">
  <c:if test="${short_message.startsWith('!')}">
    ${short_message}
  </c:if>
  <c:if test="${!short_message.startsWith('!')}">
    ${pageContext.servletContext.getAttribute("i18n").getMsg(short_message)}
  </c:if>
</c:if>

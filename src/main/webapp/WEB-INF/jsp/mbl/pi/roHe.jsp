<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<th>
<c:forEach var="fn" items="${hldUvd.lazPickFds(cls)}">
  <c:set var="ceHe" value="${hldUvd.stg(cls,fn,'ceHe')}" scope="request"/>
  <c:if test="${not empty ceHe}">
    <c:if test="${not empty isFst}">
      <c:set var="isFst" value="${false}" scope="request"/>
    </c:if>
    <c:if test="${empty isFst}">
      <c:set var="isFst" value="${true}" scope="request"/>
    </c:if>
    <c:set var="fdNm" value="${fn}" scope="request"/>
    <jsp:include page="../ls/${ceHe}.jsp"/>
  </c:if>
</c:forEach>
</th>

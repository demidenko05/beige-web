<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<td>
<c:forEach var="fn" items="${hldUvd.lazPickFds(cls)}">
  <c:set var="ceDe" value="${hldUvd.stg(cls,fn,'ceDe')}" scope="request"/>
  <c:if test="${not empty ceDe}">
    <c:if test="${not empty isFst}">
      <c:set var="isFst" value="${false}" scope="request"/>
    </c:if>
    <c:if test="${empty isFst}">
      <c:set var="isFst" value="${true}" scope="request"/>
    </c:if>
    <c:set var="fdNm" value="${fn}" scope="request"/>
    <c:set var="mdl" value="${ent[fn]}" scope="request"/>
    <jsp:include page="../ls/${ceDe}.jsp"/>
  </c:if>
</c:forEach>
</td>

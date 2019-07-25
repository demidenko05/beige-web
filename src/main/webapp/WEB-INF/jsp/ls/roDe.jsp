<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty param.mbl}">
  <c:forEach var="fn" items="${hldUvd.lazLstFds(cls)}">
    <c:set var="ceDe" value="${hldUvd.stg(cls,fn,'ceDe')}" scope="request"/>
    <c:if test="${not empty ceDe}">
      <c:set var="fdNm" value="${fn}" scope="request"/>
      <c:set var="mdl" value="${ent[fn]}" scope="request"/>
      <jsp:include page="${ceDe}.jsp"/>
    </c:if>
  </c:forEach>
</c:if>
<c:if test="${not empty param.mbl}">
  <td>
  <c:forEach var="fn" items="${hldUvd.lazLstFds(cls)}">
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
      <jsp:include page="${ceDe}.jsp"/>
    </c:if>
  </c:forEach>
  </td>
</c:if>

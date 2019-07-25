<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty param.mbl}">
  <c:forEach var="fn" items="${hldUvd.lazLstFds(cls)}">
    <c:set var="ceHe" value="${hldUvd.stg(cls,fn,'ceHe')}" scope="request"/>
    <c:if test="${not empty ceHe}">
      <c:set var="fdNm" value="${fn}" scope="request"/>
      <jsp:include page="${ceHe}.jsp"/>
    </c:if>
  </c:forEach>
</c:if>
<c:if test="${not empty param.mbl}">
  <th>
  <c:forEach var="fn" items="${hldUvd.lazLstFds(cls)}">
    <c:set var="ceHe" value="${hldUvd.stg(cls,fn,'ceHe')}" scope="request"/>
    <c:if test="${not empty ceHe}">
      <c:if test="${not empty isFst}">
        <c:set var="isFst" value="${false}" scope="request"/>
      </c:if>
      <c:if test="${empty isFst}">
        <c:set var="isFst" value="${true}" scope="request"/>
      </c:if>
      <c:set var="fdNm" value="${fn}" scope="request"/>
      <jsp:include page="${ceHe}.jsp"/>
    </c:if>
  </c:forEach>
  </th>
</c:if>

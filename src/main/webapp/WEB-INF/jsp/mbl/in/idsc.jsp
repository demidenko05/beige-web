<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ent.isNew}">
  <c:set var="inpTy" value="text" scope="request"/>
  <c:set var="inpAdd" value="" scope="request"/>
  <jsp:include page="tmpl.jsp"/>
</c:if>
<c:if test="${!ent.isNew}">
  <jsp:include page="reo.jsp"/>
</c:if>

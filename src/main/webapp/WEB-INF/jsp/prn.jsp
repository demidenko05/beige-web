<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${rvs.cpf.usLoc}" scope="request"/>
<c:set var="cls" value="${rvs.uvs.cls}" scope="request"/>
<c:set var="ent" value="${rvs.uvs.ent}" scope="request"/>
<jsp:include page="tml/${hldUvd.stg(cls,'prn')}.jsp"/>

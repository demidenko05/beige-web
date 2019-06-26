<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="inpTy" value="text" scope="request"/>
<c:set var="inpAdd" value="class='bsNum${rvs.cpf.txDp}'" scope="request"/>
<c:set target="${usdDp}" property="${rvs.cpf.txDp.toString()}" value="${rvs.cpf.txDp.toString()}"/>
<jsp:include page="tmpl.jsp"/>

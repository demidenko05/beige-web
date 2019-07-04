<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="tml/var.jsp"/>
<c:set var="lsPlNm" value="lstMnPl" scope="request"/>
<c:set var="prfFlOrFrm" value="${lsPlNm}" scope="request"/>
<c:set var="rndLst" value="lj" scope="request"/>
<c:if test="${param.jscr == null}">
<c:set var="jscr" value="${hldUvd.setJs(rvs,null,null)}"/>
</c:if>
<c:if test="${param.jscr != null}">
  <c:set var="jscr" value="${hldUvd.setJs(rvs,null,null)}${param.jscr}"/>
</c:if>
<c:if test="${not empty rvs.msgSuc}">
  <c:set var="jscr" value="${jscr}bsShwSuc('${i18n.getMsg(rvs.msgSuc, rvs.upf.lng.iid)}');"/>
</c:if>
<c:if test="${not empty rvs.msgWrn}">
  <c:set var="jscr" value="${jscr}bsShwWrn('${i18n.getMsg(rvs.msgWrn, rvs.upf.lng.iid)}');"/>
</c:if>
<c:if test="${not empty rvs.msgErr}">
  <c:set var="jscr" value="${jscr}bsShwErr('${i18n.getMsg(rvs.msgErr, rvs.upf.lng.iid)}');"/>
</c:if>
<c:import url="/WEB-INF/jsp/tml/lst.jsp" varReader="rdEnts" charEncoding="UTF-8">
{"mlTrRsp":
  [{"trgNm": "${lsPlNm}lst", "cont": "${utJsp.toJsonStrCls(rdEnts)}",
    "trgPrNm": null, "jscr": "${utJsp.toJsonStr(jscr)}"},
    {"trgNm": "frmMnPl", "cont": "",
      "trgPrNm": null, "jscr": null}
  ]
}
</c:import>

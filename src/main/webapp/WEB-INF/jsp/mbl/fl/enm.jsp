<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="frcd" value="${prfFlOr}frcd"/>
<c:set var="parVal" value="${prfFlOr}${fdNm}Vl"/>
<c:set var="parOpr" value="${prfFlOr}${fdNm}Opr"/>
<c:set var="parVlAp" value="${prfFlOr}${fdNm}VlAp"/>
<div class="input-line">
  <c:if test="${rvs.uvs.fltMp[frcd].contains(fdNm)}">
    <b>${i18n.getMsg("forced", rvs.upf.lng.iid)}</b>
    <label>${i18n.getMsg(fdNm, rvs.upf.lng.iid)}</label>
    ${rvs.uvs.fltMp[parOpr]}
    ${rvs.uvs.fltMp[parVlAp]}
    <input type="hidden" name="${parVal}" value="${rvs.uvs.fltMp[parVal]}">
    <input type="hidden" name="${parOpr}" value="${rvs.uvs.fltMp[parOpr]}">
  </c:if>
  <c:if test="${!rvs.uvs.fltMp[frcd].contains(fdNm)}">
    <input type="hidden" name="${parOpr}" value="eq">
    <label for="${parVal}">${i18n.getMsg(fdNm, rvs.upf.lng.iid)}</label>
    <c:set var="selDis" value=""/>
    <c:if test="${empty rvs.uvs.fltMp[parVal]}"> <c:set var="selDis" value="selected"/> </c:if>
    <select name="${parVal}" onchange="bsInpChn(this);">
      <option value="" ${selDis}>${i18n.getMsg("disabled", rvs.upf.lng.iid)}</option>
        <c:forEach var="enm" items="${hldUvd.fldCls(cls, fdNm).getEnumConstants()}">
          <c:if test="${rvs.uvs.fltMp[parVal] eq enm.ordinal()}"> <c:set var="selDis" value=""/> </c:if>
          <c:if test="${rvs.uvs.fltMp[parVal] != enm.ordinal()}"> <c:set var="selDis" value="selected"/> </c:if>
          <option value="${enm.ordinal()}" ${selDis}>${i18n.getMsg(enm.name(), rvs.upf.lng.iid)}</option>
        </c:forEach>
    </select>
  </c:if>
</div>
